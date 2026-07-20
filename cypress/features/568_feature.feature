Feature: 568
  568 feature scenarios

@568 @1
Scenario: JWT verification - context_id propagated
    Given Valid JWT containing context claim
    Then Send authenticated request. Subgraph receives x-context-id matching JWT claim Inspect downstream headers.
