Feature: 890
  890 feature scenarios

@890 @medium
Scenario: Self-Capture Page - CO-ACQ-01 - SC-006 - Dedupe gate: Cold/in-flight prospect match re-activates without duplicating
    Then The existing record is re-activated/warmed up, a touch is logged against it, no duplicate Prospect is created, and the funnel continues.
