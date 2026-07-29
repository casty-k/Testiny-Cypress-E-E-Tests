Feature: KYC Gates
  P03 feature scenarios

@P03 @medium
Scenario: KYC Gate Evaluation - Hard Gate - P03-001 - Hard gate block on national_id='does_not_have'


@P03 @medium
Scenario: KYC Gate Evaluation - Hard Gate - P03-002 - Hard gate block prevents customer record creation


@P03 @medium
Scenario: KYC Gate Evaluation - Hard Gate - P03-003 - Multiple hard gates unresolved


@P03 @medium
Scenario: KYC Gate Evaluation - Hard Gate - P03-004 - Hard gate becomes resolved (user gets document)


@P03 @medium
Scenario: KYC Gate Evaluation - Soft Gate - P03-005 - Soft gate unresolved (registration proceeds with flags)


@P03 @medium
Scenario: KYC Gate Evaluation - Soft Gate - P03-006 - Soft gate flags attached to customer record


@P03 @medium
Scenario: KYC Gate Evaluation - Soft Gate - P03-007 - Multiple soft gates unresolved


@P03 @medium
Scenario: KYC Gate Evaluation - Proceed Clean - P03-008 - All gates cleared (proceed_clean)


@P03 @medium
Scenario: KYC Gate Evaluation - Proceed Clean - P03-009 - Proceed clean: no flags attached


@P03 @medium
Scenario: KYC Gate Evaluation - Edge Cases - P03-010 - Gate evaluation with partial checklist (missing fields)


@P03 @medium
Scenario: KYC Gate Evaluation - Edge Cases - P03-011 - Gate evaluation with invalid status value


@P03 @medium
Scenario: KYC Gate Evaluation - Edge Cases - P03-012 - rule_version stamped on gate_evaluation_facts


@P03 @medium
Scenario: KYC Gate Evaluation - Edge Cases - P03-013 - Policy change updates future gate evaluations

