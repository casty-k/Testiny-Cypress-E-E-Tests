Feature: 738
  738 feature scenarios

@738 @medium
Scenario: Cross-Cutting - rule_version - CC-004 - New capture after policy update stamps new version
    Given Policy updated from v3 to v4.
    Then Capture new prospect. New prospect_captured_fact stamps rule_version=4.
