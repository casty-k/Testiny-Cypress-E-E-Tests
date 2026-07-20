Feature: 688
  688 feature scenarios

@688 @medium
Scenario: Cutoff Extension - P02-013 - Cutoff extended multiple times (re-entry)
    Given A prospect already extended once.
    Then Extend again by 5 days. nurture_entry_at reset again.
