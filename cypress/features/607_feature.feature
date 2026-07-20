Feature: 607
  607 feature scenarios

@607 @1
Scenario: Reject unauthenticated SSE
    Given Licensed federated subscriptions enabled
    Then Open SSE without authentication. HTTP 401 returned
