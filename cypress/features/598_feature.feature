Feature: 598
  598 feature scenarios

@598 @medium
Scenario: Prevent direct subgraph access
    Given Subgraphs deployed behind Router
    Then Attempt external access to subgraph endpoint. Direct access denied
