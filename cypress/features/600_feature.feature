Feature: 600
  600 feature scenarios

@600 @1
Scenario: Dependency reflected in readiness
    Given Required dependency unavailable
    Then Call readiness endpoint. Readiness indicates unhealthy dependency according to configuration
