Feature: 577
  577 feature scenarios

@577 @1
Scenario: Reject malformed JWT
    Given Invalid token string available
    Then Send malformed token. HTTP 401 returned
