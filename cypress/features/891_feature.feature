Feature: 891
  891 feature scenarios

@891 @medium
Scenario: Self-Capture Page - CO-ACQ-01 - SC-007 - Dedupe gate: terminated-customer match stops at capture (win-back, Risk-gated)
    Then No score, consent prompt, or qualification is run; the case is routed to CO-ACQ-09 tagged win-back for the mandatory Risk gate, and capture stops there.
