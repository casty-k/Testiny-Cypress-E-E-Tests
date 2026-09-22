Feature: 1210
  1210 feature scenarios

@1210 @medium
Scenario: Merge blocked when tickets >3 days apart
    Then API rejects the merge; no mergedIntoTicketId set on either ticket
