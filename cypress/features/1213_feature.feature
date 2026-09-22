Feature: 1213
  1213 feature scenarios

@1213 @medium
Scenario: Reversal succeeds inside 24h window
    Then API returns success; absorbed ticket status reverts to preMergeStatus value; mergedIntoTicketId clears
