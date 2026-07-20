Feature: 711
  711 feature scenarios

@711 @medium
Scenario: KYC Gate Evaluation - Edge Cases - P03-011 - Gate evaluation with invalid status value
    Given A checklist with national_id='unknown_status' (not in {has_now, has_but_not_now, does_not_have}).
    Then Call evaluate_gates. HTTP 400 returned.
