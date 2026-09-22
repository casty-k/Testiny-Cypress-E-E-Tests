Feature: 1235
  1235 feature scenarios

@1235 @medium
Scenario: Cross-domain data is not writable from ticket resolution
    Then Mutation is rejected; CO-SUP-03 only has read access per doc scope (§2)
