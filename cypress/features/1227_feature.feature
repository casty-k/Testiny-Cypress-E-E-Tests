Feature: 1227
  1227 feature scenarios

@1227 @medium
Scenario: Ticket does not prematurely auto-close under attempt count
    Then Ticket remains open; auto-close to closed_unreachable does NOT fire since 3rd attempt has not occurred
