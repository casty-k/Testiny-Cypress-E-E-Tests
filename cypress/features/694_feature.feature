Feature: 694
  694 feature scenarios

@694 @medium
Scenario: Marking Ready - P02-019 - Mark ready for prospect not in nurture
    Given A prospect with status='cold' (never entered nurture).
    Then Submit mark_ready command. HTTP 422 returned.
