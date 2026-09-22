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
const TESTINY_API_KEY = process.env.TESTINY_API_KEY;
const TESTINY_PROJECT_ID = process.env.TESTINY_PROJECT_ID || 'OS2';
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

  if (!TESTINY_API_KEY) {
    console.error('❌ Error: TESTINY_API_KEY environment variable is not set');
    console.error('Set it with: export TESTINY_API_KEY=your_token');
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
 * Get IDs of test cases already converted to feature files
 */
function getExistingTestCaseIds() {
  try {
    const files = fs.readdirSync(FEATURES_DIR);
    const existingIds = new Set();

    files.forEach(file => {
      if (file.endsWith('.feature')) {
        // Extract numeric ID from filename (e.g., "819_feature.feature" → 819)
        const filenameMatch = file.match(/^(\d+)_/);
        if (filenameMatch) {
          existingIds.add(parseInt(filenameMatch[1]));
        }

        // Also try to extract from file content (scenario titles)
        try {
          const content = fs.readFileSync(path.join(FEATURES_DIR, file), 'utf8');
          // Look for numeric IDs in scenario lines
          const scenarioMatches = content.match(/Scenario:.*?\b(\d{3,})\b/g) || [];
          scenarioMatches.forEach(scenario => {
            const idMatch = scenario.match(/\b(\d{3,})\b/);
            if (idMatch) {
              existingIds.add(parseInt(idMatch[1]));
            }
          });
        } catch (e) {
          // Skip if file can't be read
        }
      }
    });

    return existingIds;
  } catch (error) {
    return new Set();
  }
}

/**
 * Fetch test cases from Testiny API using pagination
 *
 * NOTE: This intentionally sorts by plain `id asc` rather than the
 * folder-based `tc_getInFolderOrder` / `seq` approach used previously.
 * That approach required every folder ID in the project to be hardcoded
 * into a `seq` array — any test case filed under a folder created after
 * that array was written would silently be excluded from the results.
 * Since new folders get created over time and their IDs aren't
 * predictable, sorting by `id` avoids that failure mode entirely and
 * needs no maintenance as the folder tree grows.
 */
async function fetchTestCases() {
  console.log('📥 Fetching test cases from Testiny...\n');

  const PAGE_SIZE = 200;

  try {
    // Get existing test case IDs
    const existingIds = getExistingTestCaseIds();
    console.log(`📋 Found ${existingIds.size} existing feature files\n`);

    const allTestCases = [];
    let offset = 0;
    let page = 1;

    while (true) {
      const queryPayload = {
        pagination: { limit: PAGE_SIZE, offset },
        order: [
          { column: 'id', order: 'asc' }
        ],
        filter: { project_id: 7 },
        includeTotalCount: true,
        map: [
          {
            entities: ['testcase', 'testcase_folder'],
            optional: true,
            result: 'testcase_folder'
          }
        ]
      };

      // Make request (GET with query parameter)
      const response = await axios.get(
        `${TESTINY_API_BASE}/testcase`,
        {
          params: {
            q: JSON.stringify(queryPayload)
          },
          headers: {
            'X-Api-Key': TESTINY_API_KEY,
            'Content-Type': 'application/json'
          },
          timeout: 30000
        }
      );

      const batch = response.data.data || [];
      console.log(`   Page ${page}: retrieved ${batch.length} test cases (offset ${offset})`);

      allTestCases.push(...batch);

      if (batch.length < PAGE_SIZE) {
        break; // last page reached
      }

      offset += PAGE_SIZE;
      page += 1;
    }

    console.log(`✅ Retrieved ${allTestCases.length} total test cases from Testiny`);

    // Filter to only new test cases
    const newTestCases = allTestCases.filter(tc => !existingIds.has(tc.id));
    console.log(`🆕 Found ${newTestCases.length} new test cases to convert\n`);

    return newTestCases;
  } catch (error) {
    console.error('❌ Error fetching test cases:');
    if (error.response) {
      console.error(`   Status: ${error.response.status}`);
      console.error(`   Message: ${error.response.statusText}`);
      console.error(`   Data: ${JSON.stringify(error.response.data)}`);
    } else {
      console.error(`   ${error.message}`);
    }
    process.exit(1);
  }
}

/**
 * Parse Slate editor JSON format to plain text
 */
function parseSlateText(slateData) {
  if (!slateData) return '';

  try {
    // Parse if it's a JSON string
    let data = slateData;
    if (typeof slateData === 'string') {
      // Check if it looks like JSON
      if (slateData.startsWith('{') || slateData.startsWith('[')) {
        data = JSON.parse(slateData);
      } else {
        // It's plain text, return as-is
        return slateData.trim();
      }
    }

    // Extract text from Slate structure
    if (data.c && Array.isArray(data.c)) {
      return data.c
        .map(block => {
          if (!block.children || !Array.isArray(block.children)) return '';

          return block.children
            .map(child => {
              if (typeof child === 'string') return child;
              if (child.text) return child.text;
              return '';
            })
            .join('')
            .trim();
        })
        .filter(text => text.length > 0)
        .join('\n');
    }

    return '';
  } catch (error) {
    // If parsing fails, return empty string
    return '';
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
    preconditions_text = '',
    content_text = '',
    steps = [],
    expected_result_text = ''
  } = testCase;

  // Parse Slate format if needed
  const preconditions = parseSlateText(preconditions_text) || parseSlateText(testCase.preconditions) || '';
  const contentText = parseSlateText(content_text) || parseSlateText(testCase.content) || '';
  const expectedResults = parseSlateText(expected_result_text) || parseSlateText(testCase.expected_results) || '';

  // Extract project code from title (e.g., "P01" from "Prospect Capture-P01-001 - ...")
  const projectCodeMatch = title.match(/P0[1-9]/);
  const projectCode = projectCodeMatch ? projectCodeMatch[0] : 'UNKNOWN';

  // Normalize priority to tag (handle non-string values)
  const priorityStr = String(priority || 'medium').toLowerCase();
  const priorityTag = priorityStr.replace(/\s+/g, '_');

  // Build scenario name
  const scenarioName = title;

  // Convert preconditions to Given steps
  const preconditionArray = preconditions
    ? preconditions.split('\n').filter(p => p.trim()).map(p => p.trim())
    : [];

  const givenSteps = preconditionArray.map(pre => `    Given ${pre}`).join('\n');

  // Convert content/steps to When steps
  const contentArray = contentText
    ? contentText.split('\n').filter(c => c.trim()).map(c => c.trim())
    : [];

  const whenSteps = contentArray.length > 0
    ? contentArray
        .map((action, idx) => {
          const prefix = idx === 0 ? 'When' : 'And';
          return `    ${prefix} ${action}`;
        })
        .join('\n')
    : (Array.isArray(steps)
        ? steps
            .filter(step => step && step.action)
            .map((step, idx) => {
              const action = step.action || step;
              const prefix = idx === 0 ? 'When' : 'And';
              return `    ${prefix} ${action}`;
            })
            .join('\n')
        : '');

  // Convert expected results to Then steps
  const expectedArray = expectedResults
    ? expectedResults.split('\n').filter(e => e.trim()).map(e => e.trim())
    : [];

  const thenSteps = expectedArray
    .map((expected, idx) => {
      const prefix = idx === 0 ? 'Then' : 'And';
      return `    ${prefix} ${expected}`;
    })
    .join('\n');

  // Build tags (use test case ID instead of project code)
  const tags = [`@${id}`, `@${priorityTag}`].filter(Boolean);
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
 * Group test cases by test case ID (one feature file per test case)
 */
function groupByFeature(testCases) {
  const features = {};

  testCases.forEach(testCase => {
    const { scenario } = convertToGherkin(testCase);
    const testCaseId = String(testCase.id);

    features[testCaseId] = {
      testCaseId,
      scenario,
      testCaseCount: 1
    };
  });

  return features;
}

/**
 * Generate feature file name from test case ID
 */
function getFeatureFileName(testCaseId) {
  return `${testCaseId}_feature`;
}

/**
 * Write feature file to disk
 */
function writeFeatureFile(testCaseId, scenario) {
  const fileName = getFeatureFileName(testCaseId);
  const featurePath = path.join(FEATURES_DIR, `${fileName}.feature`);

  // Build feature file content
  const content = `Feature: ${testCaseId}
  ${testCaseId} feature scenarios

${scenario}
`;

  try {
    fs.writeFileSync(featurePath, content, 'utf8');
    return {
      success: true,
      path: featurePath,
      count: 1
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
      const result = writeFeatureFile(feature.testCaseId, feature.scenario);

      if (result.success) {
        console.log(`✅ cypress/features/${path.basename(result.path)}`);
        totalScenarios += result.count;
      } else {
        console.error(`❌ Failed to write feature file: ${result.error}`);
      }
    });

    // Summary
    console.log(`\n${'═'.repeat(50)}`);
    console.log(`\n✨ Sync complete! ${Object.keys(features).length} feature files created`);
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
