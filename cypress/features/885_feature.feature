Feature: 885
  885 feature scenarios

@885 @medium
Scenario: Self-Capture Page - CO-ACQ-01 - SC-001 - Capture source stamped self-serve, agent ID null
    Then The Prospect record is stamped capture_source = self-serve and agent_id is set to null.
