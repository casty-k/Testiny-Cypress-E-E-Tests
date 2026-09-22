/**
 * Fetch test cases from Testiny API using pagination
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
        label: 'tc_getInFolderOrder',
        pagination: { limit: PAGE_SIZE, offset },
        order: [
          {
            column: 'testcase_folder.id',
            order: 'seq',
            seq: [0, -1, -2, 66, 73, 71, 90, 70, 89, 69, 67, 68, 88, 72, 74, 75, 76, 77, 78, 81, 85, 97]
          },
          { column: 'sort_index', order: 'asc' }
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

      const response = await axios.get(
        `${TESTINY_API_BASE}/testcase`,
        {
          params: {
            l: 'tc_getInFolderOrder',
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
