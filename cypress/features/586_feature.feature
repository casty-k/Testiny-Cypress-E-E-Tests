Feature: 586
  586 feature scenarios

@586 @1
Scenario: Compose supergraph at startup
    Given All subgraphs available
    Then Start Router. Unified supergraph schema is successfully composed
