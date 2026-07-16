#!/usr/bin/env node

/**
 * Testiny → Cypress Sync Script
 * Automatically converts Testiny test cases to Cypress BDD feature files
 */

require('dotenv').config();

const axios = require('axios');
const fs = require('fs');
const path = require('path');

// Configuration
const TESTINY_API_TOKEN = process.env.TESTINY_API_TOKEN;
const TESTINY_PROJECT_ID = process.env.TESTINY_PROJECT_ID || '66';
const TESTINY_API_BASE = 'https://app.testiny.io/api/v1';
const FEATURES_DIR = path.join(__dirname, '../cypress/features');

// Ensure features directory exists
if (!fs.existsSync(FEATURES_DIR)) {
  fs.mkdirSync(FEATURES_DIR, { recursive: true });
}

/**
 * Validate environment and configuration
 */
function validateConfig() {
  console.log('\n🔍 Validating configuration...\n');

  if (!TESTINY_API_TOKEN) {
    console.error('❌ Error: TESTINY_API_TOKEN environment variable is not set');
    console.error('Set it with: export TESTINY_API_TOKEN=your_token');
    process.exit(1);
  }

  if (!TESTINY_PROJECT_ID) {
    console.error('❌ Error: TESTINY_PROJECT_ID is not set');
    process.exit(1);
  }

  console.log(`✅ API Token configured`);
  console.log(`✅ Project ID: ${TESTINY_PROJECT_ID}`);
  console.log(`✅ Features directory: ${FEATURES_DIR}\n`);
}

/**
 * Fetch test cases from Testiny API
 */
async function fetchTestCases() {
  console.log('📥 Fetching test cases from Testiny...\n');

try {
  const response = await axios.get(
    `${TESTINY_API_BASE}/projects/${TESTINY_PROJECT_ID}/testcases`,
    {
      headers: {
        'X-Api-Key': TESTINY_API_TOKEN,
        'Content-Type': 'application/json'
      }
    }
  );

    const testCases = response.data.data || response.data || [];
    console.log(`✅ Retrieved ${testCases.length} test cases\n`);

    return testCases;
  } catch (error) {
    console.error('❌ Error fetching test cases:');
    if (error.response) {
      console.error(`   Status: ${error.response.status}`);
      console.error(`   Message: ${error.response.statusText}`);
    } else {
      console.error(`   ${error.message}`);
    }
    process.exit(1);
  }
}

/**
 * Convert Testiny test case to Gherkin Scenario
 */
function convertToGherkin(testCase) {
  const {
    id = '',
    title = '',
    priority = 'medium',
    preconditions = '',
    steps = [],
    expected_results = ''
  } = testCase;

  // Extract project code from ID (e.g., "P01" from "P01-001")
  const projectCode = id.split('-')[0] || 'UNKNOWN';

  // Normalize priority to tag
  const priorityTag = priority.toLowerCase().replace(/\s+/g, '_');

  // Build scenario name
  const scenarioName = title;

  // Convert preconditions to Given steps
  const preconditionArray = preconditions
    ? preconditions.split('\n').filter(p => p.trim()).map(p => p.trim())
    : [];

  const givenSteps = preconditionArray.map(pre => `    Given ${pre}`).join('\n');

  // Convert steps to When steps
  const whenSteps = Array.isArray(steps)
    ? steps
        .filter(step => step && step.action)
        .map((step, idx) => {
          const action = step.action || step;
          const prefix = idx === 0 ? 'When' : 'And';
          return `    ${prefix} ${action}`;
        })
        .join('\n')
    : '';

  // Convert expected results to Then steps
  const expectedArray = expected_results
    ? expected_results.split('\n').filter(e => e.trim()).map(e => e.trim())
    : [];

  const thenSteps = expectedArray
    .map((expected, idx) => {
      const prefix = idx === 0 ? 'Then' : 'And';
      return `    ${prefix} ${expected}`;
    })
    .join('\n');

  // Build tags
  const tags = [`@${projectCode}`, `@${priorityTag}`].filter(Boolean);
  const tagLine = tags.length > 0 ? `${tags.join(' ')}\n` : '';

  // Build complete scenario
  const scenario = `${tagLine}Scenario: ${scenarioName}
${givenSteps}${givenSteps && whenSteps ? '\n' : ''}${whenSteps}${(givenSteps || whenSteps) && thenSteps ? '\n' : ''}${thenSteps}`;

  return {
    projectCode,
    scenario,
    tags
  };
}

/**
 * Group test cases by feature (project module)
 */
function groupByFeature(testCases) {
  const features = {};

  testCases.forEach(testCase => {
    const { projectCode, scenario } = convertToGherkin(testCase);

    if (!features[projectCode]) {
      features[projectCode] = {
        projectCode,
        scenarios: [],
        testCaseCount: 0
      };
    }

    features[projectCode].scenarios.push(scenario);
    features[projectCode].testCaseCount++;
  });

  return features;
}

/**
 * Generate feature file name from project code
 */
function getFeatureFileName(projectCode) {
  const featureNames = {
    'P01': '01_prospect_capture',
    'P02': '02_nurture_pipeline',
    'P03': '03_kyc_gates',
    'P04': '04_registration',
    'P05': '05_cross_cutting'
  };

  return featureNames[projectCode] || `${projectCode.toLowerCase()}_feature`;
}

/**
 * Write feature file to disk
 */
function writeFeatureFile(projectCode, scenarios) {
  const fileName = getFeatureFileName(projectCode);
  const featurePath = path.join(FEATURES_DIR, `${fileName}.feature`);

  // Get human-readable feature name
  const featureNames = {
    'P01': 'Prospect Capture',
    'P02': 'Nurture Pipeline',
    'P03': 'KYC Gates',
    'P04': 'Registration',
    'P05': 'Cross-Cutting'
  };

  const featureName = featureNames[projectCode] || projectCode;

  // Build feature file content
  const content = `Feature: ${featureName}
  ${projectCode} feature scenarios

${scenarios.join('\n\n')}
`;

  try {
    fs.writeFileSync(featurePath, content, 'utf8');
    return {
      success: true,
      path: featurePath,
      count: scenarios.length
    };
  } catch (error) {
    return {
      success: false,
      error: error.message
    };
  }
}

/**
 * Main sync process
 */
async function sync() {
  console.log('\n🔄 Testiny → Cypress Sync Started\n');
  console.log('═'.repeat(50));

  validateConfig();

  try {
    // Fetch test cases
    const testCases = await fetchTestCases();

    if (testCases.length === 0) {
      console.log('⚠️  No test cases found');
      process.exit(0);
    }

    // Group by feature
    const features = groupByFeature(testCases);

    // Write feature files
    console.log('📝 Writing feature files...\n');
    let totalScenarios = 0;

    Object.values(features).forEach(feature => {
      const result = writeFeatureFile(feature.projectCode, feature.scenarios);

      if (result.success) {
        console.log(`✅ cypress/features/${path.basename(result.path)} (${result.count} scenarios)`);
        totalScenarios += result.count;
      } else {
        console.error(`❌ Failed to write feature file: ${result.error}`);
      }
    });

    // Summary
    console.log(`\n${'═'.repeat(50)}`);
    console.log(`\n✨ Sync complete! ${Object.keys(features).length} feature files`);
    console.log(`📊 Total scenarios: ${totalScenarios}\n`);

    console.log('📝 Next steps:');
    console.log('   1. Review cypress/features/*.feature files');
    console.log('   2. Implement missing step definitions');
    console.log('   3. Run: npm run cypress:run\n');

  } catch (error) {
    console.error('\n❌ Sync failed:', error.message);
    process.exit(1);
  }
}

// Run sync
sync();