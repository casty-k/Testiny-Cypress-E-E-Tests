Feature: 1223
  1223 feature scenarios

@1223 @medium
Scenario: Ticket stays open under 3 attempts within window
    Then Ticket remains open; status does not change to closed_unreachable
