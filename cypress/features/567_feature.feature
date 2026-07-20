Feature: 567
  567 feature scenarios

@567 @1
Scenario: JWT verification - actor_id propagated
    Given Valid JWT available
    Then Send authenticated request. Subgraph receives x-actor-id matching JWT sub claim Inspect downstream headers.
