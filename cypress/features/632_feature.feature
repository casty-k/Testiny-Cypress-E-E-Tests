Feature: 632
  632 feature scenarios

@632 @1
Scenario: Oversized GraphQL request body rejected
    Given Maximum request body size configured
    Then Send a request whose body exceeds the configured limit. Request rejected with an appropriate HTTP status and the Router does not crash
