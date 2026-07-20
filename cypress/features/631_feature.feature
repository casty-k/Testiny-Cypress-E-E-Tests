Feature: 631
  631 feature scenarios

@631 @1
Scenario: Query depth or complexity limit enforced
    Given Depth/complexity limits configured
    Then Send an excessively deep or complex query. Request rejected before execution according to the configured limit
