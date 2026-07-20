#!/usr/bin/env node

require('dotenv').config();

/**
 * Testiny → Cypress Sync Script
 * Automatically converts Testiny test cases to Cypress BDD feature files
 */

const axios = require('axios');
const fs = require('fs');
const path = require('path');

// Configuration
const TESTINY_API_TOKEN = process.env.TESTINY_API_TOKEN;
const TESTINY_PROJECT_ID = process.env.TESTINY_PROJECT_ID || '7';
const TESTINY_API_BASE = 'https://app.testiny.io/api/v1';
const FEATURES_DIR = path.join(__dirname, '../cypress/features');

// Ensure features directory exists
if (!fs.existsSync(FEATURES_DIR)) {
  fs.mkdirSync(FEATURES_DIR, { recursive: true });
}

function validateConfig() {
  console.log('\n🔍 Validating configuration...\n');

  if (!TESTINY_API_TOKEN) {
    console.error('❌ Error: TESTINY_API_TOKEN environment variable is not set');
    process.exit(1);
  }

  console.log(`✅ API Token configured`);
  console.log(`✅ Project ID: ${TESTINY_PROJECT_ID}`);
  console.log(`✅ Features directory: ${FEATURES_DIR}\n`);
}

async function fetchTestCases() {
  console.log('📥 Fetching test cases from Testiny...\n');

  try {
    // Get all existing feature file IDs
    const files = fs.readdirSync(FEATURES_DIR);
    const testcaseIds = files
      .map(f => f.replace('_feature.feature', ''))
      .filter(id => !isNaN(id));

    console.log(`📁 Found ${testcaseIds.length} feature files\n`);

    let allTestCases = [];

    // Fetch each testcase individually
    for (const id of testcaseIds) {
      try {
        const response = await axios.get(
          `${TESTINY_API_BASE}/testcase/${id}`,
          {
            headers: {
              'X-Api-Key': TESTINY_API_TOKEN,
              'Content-Type': 'application/json'
            },
            timeout: 10000
          }
        );

        if (response.data) {
          allTestCases.push(response.data);
        }
      } catch (e) {
        // Skip failed fetches
      }
    }

    console.log(`✅ Retrieved ${allTestCases.length} test cases\n`);
    return allTestCases;

  } catch (error) {
    console.error('❌ Error:', error.message);
    process.exit(1);
  }
}

/**
 * Parse Slate editor format to plain text
 */
function parseSlateText(slateJson) {
  if (!slateJson) return '';
  
  try {
    const slate = typeof slateJson === 'string' ? JSON.parse(slateJson) : slateJson;
    if (!slate.c || !Array.isArray(slate.c)) return '';
    
    let fullText = [];
    slate.c.forEach(block => {
      const text = extractBlockText(block);
      if (text) fullText.push(text);
    });
    
    return fullText.join('\n').trim();
  } catch (e) {
    return '';
  }
}

/**
 * Extract text from a Slate block
 */
function extractBlockText(block) {
  if (!block) return '';
  
  // For table blocks
  if (block.t === 't' && block.children) {
    let tableText = [];
    block.children.forEach(row => {
      if (row.t === 'tr' && row.children) {
        row.children.forEach(cell => {
          const cellText = extractBlockText(cell);
          if (cellText) tableText.push(cellText);
        });
      }
    });
    return tableText.join(' ');
  }
  
  // For paragraph blocks
  if (block.t === 'p' && block.children) {
    return block.children.map(child => extractLeafText(child)).join('');
  }
  
  // For other blocks with children
  if (block.children && Array.isArray(block.children)) {
    return block.children.map(child => extractBlockText(child)).join(' ');
  }
  
  return extractLeafText(block);
}

/**
 * Extract text from a leaf node
 */
function extractLeafText(node) {
  if (!node) return '';
  if (typeof node === 'string') return node;
  if (node.text) return node.text;
  return '';
}

function convertToGherkin(testCase) {
  const {
    id = '',
    title = '',
    priority = 0,
    precondition_text = '',
    content_text = ''
  } = testCase;

  const projectCode = String(id);
  const priorityTag = (priority || 'medium').toString().toLowerCase();

  // Parse Slate format
  const precondition = parseSlateText(precondition_text);
  const content = parseSlateText(content_text);

  // Build steps
  const givenSteps = precondition ? `    Given ${precondition}` : '';
  const thenSteps = content ? `    Then ${content}` : '';

  const steps = [givenSteps, thenSteps].filter(s => s).join('\n');
  const tags = [`@${projectCode}`, `@${priorityTag}`].join(' ');

  const scenario = `${tags}\nScenario: ${title}\n${steps}`;

  return {
    projectCode,
    scenario,
    tags
  };
}

function writeFeatureFile(projectCode, scenarios) {
  const featurePath = path.join(FEATURES_DIR, `${projectCode}_feature.feature`);

  const content = `Feature: ${projectCode}\n  ${projectCode} feature scenarios\n\n${scenarios.join('\n\n')}\n`;

  try {
    fs.writeFileSync(featurePath, content, 'utf8');
    return { success: true, path: featurePath, count: scenarios.length };
  } catch (error) {
    return { success: false, error: error.message };
  }
}

async function sync() {
  console.log('\n🔄 Testiny → Cypress Sync Started\n');
  console.log('═'.repeat(50));

  validateConfig();

  try {
    const testCases = await fetchTestCases();

    if (testCases.length === 0) {
      console.log('⚠️  No test cases found');
      process.exit(0);
    }

    const features = {};
    testCases.forEach(testCase => {
      const { projectCode, scenario } = convertToGherkin(testCase);

      if (!features[projectCode]) {
        features[projectCode] = [];
      }
      features[projectCode].push(scenario);
    });

    console.log('📝 Writing feature files...\n');
    let totalScenarios = 0;

    Object.entries(features).forEach(([code, scenarios]) => {
      const result = writeFeatureFile(code, scenarios);

      if (result.success) {
        console.log(`✅ ${path.basename(result.path)} (${result.count} scenarios)`);
        totalScenarios += result.count;
      } else {
        console.error(`❌ Failed: ${result.error}`);
      }
    });

    console.log(`\n${'═'.repeat(50)}`);
    console.log(`\n✨ Sync complete! ${Object.keys(features).length} feature files`);
    console.log(`📊 Total scenarios: ${totalScenarios}\n`);

  } catch (error) {
    console.error('\n❌ Sync failed:', error.message);
    process.exit(1);
  }
}

sync();