Feature: 572
  572 feature scenarios

@572 @medium
Scenario: Reject missing token
    Given None
    Then Send request without cookie or Authorization header. HTTP 401 returned and no subgraph invocation occurs
