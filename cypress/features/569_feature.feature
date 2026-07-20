Feature: 569
  569 feature scenarios

@569 @1
Scenario: JWT verification - roles propagated
    Given Valid JWT containing roles
    Then Send authenticated request. Subgraph receives x-roles matching JWT roles claim Inspect downstream headers.
