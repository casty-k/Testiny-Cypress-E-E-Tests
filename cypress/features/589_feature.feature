Feature: 589
  589 feature scenarios

@589 @1
Scenario: Subgraph failure isolation
    Given One subgraph intentionally unavailable
    Then Query healthy and failed subgraphs. Failed fields return errors while healthy fields continue resolving
