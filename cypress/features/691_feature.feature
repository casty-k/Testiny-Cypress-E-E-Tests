Feature: 691
  691 feature scenarios

@691 @medium
Scenario: Cutoff Extension - P02-016 - Cutoff extension for prospect not in nurture
    Given A prospect with status='ready' (not in nurture).
    Then Request extension for non-nurture prospect. HTTP 422 returned.
