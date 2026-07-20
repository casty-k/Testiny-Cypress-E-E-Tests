Feature: 710
  710 feature scenarios

@710 @medium
Scenario: KYC Gate Evaluation - Edge Cases - P03-010 - Gate evaluation with partial checklist (missing fields)
    Given A checklist with only some documents filled.
    Then Call evaluate_gates with incomplete status map. HTTP 400 returned.
