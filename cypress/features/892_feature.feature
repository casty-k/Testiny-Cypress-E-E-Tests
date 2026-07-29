Feature: 892
  892 feature scenarios

@892 @medium
Scenario: Self-Capture Page - CO-ACQ-01 - SC-008 - Dedupe gate: active-customer match stops at capture (active-customer)
    Then The case is routed to CO-ACQ-09 tagged active-customer for hand-off to Customer Success, and capture stops there.
