Feature: 677
  677 feature scenarios

@677 @medium
Scenario: Prospect Entry in to nurture- P02-002 - Prospect enters nurture on cold routing event
    Given Given a prospect with score_band = "cold" has been captured
 And gw.prospect.routed_to_nurture event published
