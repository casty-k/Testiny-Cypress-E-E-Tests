Feature: 1224
  1224 feature scenarios

@1224 @medium
Scenario: Auto-close fires at 3rd attempt past 5-day threshold
    Then Backend auto-closes ticket to closed_unreachable; ticket flagged excluded from resolution-time SLA and CSAT response-rate populations
