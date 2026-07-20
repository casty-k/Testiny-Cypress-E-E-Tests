Feature: 707
  707 feature scenarios

@707 @medium
Scenario: KYC Gate Evaluation - Soft Gate - P03-007 - Multiple soft gates unresolved
    Given KYC policy with soft gates: {driving_licence, proof_of_income}. Both are 'has_but_not_now'.
    Then Call evaluate_gates. Response shows soft_gates_unresolved: ['driving_licence', 'proof_of_income'].
