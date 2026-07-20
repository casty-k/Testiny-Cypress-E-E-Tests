Feature: 742
  742 feature scenarios

@742 @medium
Scenario: Cross-Cutting - Market-Scoped - CC-008 - Touchpoint channels per market
    Given KE policy: call, WhatsApp, SMS, email, in-person. UG policy: call, WhatsApp, SMS, email (no in-person). Touchpoint logged for in-person in UG.
    Then Submit in-person touchpoint in UG. Reject unsupported channel.
