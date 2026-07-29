Feature: 887
  887 feature scenarios

@887 @medium
Scenario: Self-Capture Page - CO-ACQ-01 - SC-003 - Partially completed extended fields infers Warm interest
    Then Interest level is inferred as Warm, and the score is computed on whichever extended inputs are present, with the missing ones counting as zero.
