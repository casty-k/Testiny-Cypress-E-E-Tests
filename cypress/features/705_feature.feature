Feature: 705
  705 feature scenarios

@705 @medium
Scenario: KYC Gate Evaluation - Soft Gate - P03-005 - Soft gate unresolved (registration proceeds with flags)
    Given KYC policy defines driving_licence as soft gate. Checklist shows driving_licence=has_but_not_now.
    Then Submit to evaluate_gates. Return decision: 'proceed_with_flags'.
