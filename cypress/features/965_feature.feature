Feature: 965
  965 feature scenarios

@965 @medium
Scenario: No outreach sent to suppressed / fraud / risk-blocked cases
    Then No re-warm or nurture outreach is sent to the case while any of these suppression statuses is active. Win-back and active-customer comms are handled by Customer Risk / Customer Success respectively after hand-off, not by this process.
