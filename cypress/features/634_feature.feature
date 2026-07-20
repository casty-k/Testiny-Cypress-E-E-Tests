Feature: 634
  634 feature scenarios

@634 @1
Scenario: Invalid schema at runtime handled safely
    Given Router running with a valid supergraph
    Then Publish an invalid schema or composition. Router keeps serving the last valid schema and does not crash Observe the Router.
