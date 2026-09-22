Feature: 1212
  1212 feature scenarios

@1212 @medium
Scenario: Reversal blocked past 24h window
    Then API returns 403 Forbidden; absorbed ticket status remains closed_merged
