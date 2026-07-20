Feature: 712
  712 feature scenarios

@712 @medium
Scenario: KYC Gate Evaluation - Edge Cases - P03-012 - rule_version stamped on gate_evaluation_facts
    Given Policy engine at version 3. KYC classification for national_id as hard.
    Then Execute evaluate_gates. gate_evaluation_facts contains rule_version=3.
