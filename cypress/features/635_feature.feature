Feature: 635
  635 feature scenarios

@635 @1
Scenario: Readiness gated on successful composition
    Given Router starting up
    Then Call the readiness endpoint before composition completes and subgraphs are reachable. Readiness reports not-ready until the supergraph is composed and dependencies are reachable
