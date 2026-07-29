Feature: 841
  841 feature scenarios

@841 @medium
Scenario: Terminated customer — must clear a risk check first
    Then A mandatory risk check runs before anything else; if it clears, the case proceeds like a cold prospect; if it doesn't, the case is suppressed with no further re-engagement.
