Feature: 709
  709 feature scenarios

@709 @medium
Scenario: KYC Gate Evaluation - Proceed Clean - P03-009 - Proceed clean: no flags attached
    Given Gate evaluation returned proceed_clean. Customer.create submitted.
    Then Submit registration. customer_projections shows soft_gap_flags=[].
