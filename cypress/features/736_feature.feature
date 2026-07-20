Feature: 736
  736 feature scenarios

@736 @medium
Scenario: Cross-Cutting - rule_version - CC-002 - rule_version stamped on gate_evaluation_facts
    Given Policy version 3. KYC gate evaluation executed.
    Then Write gate_evaluation_facts. Fact contains rule_version=3.
