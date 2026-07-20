Feature: 590
  590 feature scenarios

@590 @1
Scenario: Router health independent of subgraph outage
    Given One subgraph unavailable
    Then Call Router health endpoint. Health endpoint remains available while reporting dependency state appropriately
