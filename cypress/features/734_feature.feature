Feature: 734
  734 feature scenarios

@734 @medium
Scenario: Registration - Events - P04-021 - Event replay (idempotency in consumers)
    Given gw.customer.created event emitted. Consumer processes event, then reprocesses same event (duplicate delivery).
    Then Consumers process event, then receive duplicate. Detect duplicate via idempotency key.
