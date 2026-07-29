Feature: 956
  956 feature scenarios

@956 @medium
Scenario: Routing is mutually exclusive - no prospect flagged for two destinations
    Then Prospect is flagged for exactly one destination (Qualification OR Nurture OR Re-acquisition) - never zero and never more than one
