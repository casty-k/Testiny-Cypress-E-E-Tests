Feature: 964
  964 feature scenarios

@964 @medium
Scenario: Ambiguous Uber status ("unconfirmed") — treated as transient, not hard
    Then The case is classified as transient (re-check later), not hard, to avoid wrongly suppressing a prospect whose account may still clear. This ties to CO-ACQ-03's unconfirmed-Uber handling.
