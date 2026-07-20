Feature: 708
  708 feature scenarios

@708 @medium
Scenario: KYC Gate Evaluation - Proceed Clean - P03-008 - All gates cleared (proceed_clean)
    Given KYC policy with documents: {national_id (hard), driving_licence (soft), passport (soft)}. Checklist shows all as 'has_now'.
    Then Call evaluate_gates. Return decision='proceed_clean'.
