Feature: 889
  889 feature scenarios

@889 @medium
Scenario: Self-Capture Page - CO-ACQ-01 - SC-005 - Dedupe gate: no match creates a new Prospect
    Then A new Prospect record is created with capture_source = self-serve, and the funnel continues to consent recording.
