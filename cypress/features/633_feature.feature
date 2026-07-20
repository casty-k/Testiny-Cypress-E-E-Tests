Feature: 633
  633 feature scenarios

@633 @1
Scenario: Slow subgraph times out gracefully
    Given Subgraph timeout configured; one subgraph slow
    Then Query the slow subgraph alongside a healthy one. Slow field returns a timeout error while other fields and the Router remain unaffected
