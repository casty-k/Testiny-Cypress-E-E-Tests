Feature: 623
  623 feature scenarios

@623 @1
Scenario: Raw credentials not forwarded to subgraphs
    Given Valid JWT present in cookie
    Then Send authenticated request. Subgraph receives only injected identity headers; the raw os2_access_token cookie and Authorization header are not propagated downstream Inspect all headers received by the subgraph.
