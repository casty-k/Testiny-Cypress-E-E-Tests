Feature: 703
  703 feature scenarios

@703 @medium
Scenario: KYC Gate Evaluation - Hard Gate - P03-003 - Multiple hard gates unresolved
    Given KYC policy defines national_id (hard) and passport_number (hard). Checklist shows both as 'does_not_have'.
    Then Submit to evaluate_gates. Response includes hard_gates_unresolved: ['national_id', 'passport_number'].
