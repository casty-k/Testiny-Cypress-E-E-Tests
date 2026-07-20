Feature: 585
  585 feature scenarios

@585 @1
Scenario: JWKS unavailable during startup
    Given Invalid or unreachable JWKS endpoint
    Then Start Router. Router follows configured retry or fail-fast behavior and never silently accepts requests
