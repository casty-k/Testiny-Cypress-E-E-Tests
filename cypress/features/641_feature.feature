Feature: 641
  641 feature scenarios

@641 @1
Scenario: Subgraph errors do not leak internals
    Given A subgraph raises an internal error
    Then Trigger a subgraph error. Client receives a sanitized error; stack traces and internal details are not exposed Inspect the client response.
