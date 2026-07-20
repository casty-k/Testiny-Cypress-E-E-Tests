Feature: 678
  678 feature scenarios

@678 @medium
Scenario: Prospect Entry in to nurture -P02-003 - Prospect already in nurture receives duplicate event (idempotent)
    Given Given a prospect with status = "in_nurture" exists
 And gw.prospect.routed_to_nurture event is reprocessed
