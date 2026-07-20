Feature: 701
  701 feature scenarios

@701 @medium
Scenario: KYC Gate Evaluation - Hard Gate - P03-001 - Hard gate block on national_id='does_not_have'
    Given A prospect in ready state. KYC policy for KE defines national_id as hard gate. Associate opens KYC checklist.
    Then Checklist shows national_id=does_not_have, driving_licence=has_now. Status map submitted to evaluate_gates endpoint. Associate taps 'Proceed' on checklist. Response returned: {decision: 'blocked', hard_gates_unresolved: ['national_id']}.
