Feature: 704
  704 feature scenarios

@704 @medium
Scenario: KYC Gate Evaluation - Hard Gate - P03-004 - Hard gate becomes resolved (user gets document)
    Given A prospect initially blocked on national_id. Associate updates checklist with national_id=has_now.
    Then Resubmit to evaluate_gates. Gate evaluated again.
