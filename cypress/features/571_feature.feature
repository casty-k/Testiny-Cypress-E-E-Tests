Feature: 571
  571 feature scenarios

@571 @1
Scenario: JWT verification - Correct subgraph routing
    Given Router configured with multiple subgraphs
    Then Execute query targeting fortress service. Correct subgraph processes request
