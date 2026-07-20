Feature: 685
  685 feature scenarios

@685 @medium
Scenario: Touchpoint Logging - P02-010 - Touchpoint for prospect not in nurture
    Given A prospect with status='ready' (in conversion queue).
    Then Submit touchpoint for this prospect. HTTP 422 returned.
