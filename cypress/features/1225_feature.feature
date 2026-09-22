Feature: 1225
  1225 feature scenarios

@1225 @medium
Scenario: closed_unreachable excluded from SLA adherence aggregate
    Then Ticket does not appear in resolution-time SLA adherence figures
