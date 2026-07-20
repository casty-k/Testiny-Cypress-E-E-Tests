Feature: 735
  735 feature scenarios

@735 @medium
Scenario: Cross-Cutting - rule_version - CC-001 - rule_version stamped on prospect_captured_fact
    Given Policy engine at version 3. Prospect capture initiated.
    Then Write prospect_captured_fact. Fact contains rule_version=3.
