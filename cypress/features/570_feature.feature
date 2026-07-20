Feature: 570
  570 feature scenarios

@570 @2
Scenario: JWT verification - Claims preserved exactly
    Given Valid JWT available
    Then Send authenticated request. Injected headers exactly match verified JWT claims Compare injected headers with JWT claims.
