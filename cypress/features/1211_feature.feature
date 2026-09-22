Feature: 1211
  1211 feature scenarios

@1211 @medium
Scenario: Merge allowed at exactly Day 2 boundary
    Then Merge succeeds; absorbed ticket gets closed_merged + mergedIntoTicketId + mergeReversibleUntil = mergedAt + 24h
