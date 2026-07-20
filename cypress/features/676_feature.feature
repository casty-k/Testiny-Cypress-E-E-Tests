Feature: 676
  676 feature scenarios

@676 @medium
Scenario: Prospect Entry into Nurture-P02-001 - Prospect enters nurture on warm routing event
    Given Given a prospect with score_band = "warm" has been captured
 And gw.prospect.routed_to_nurture event published
