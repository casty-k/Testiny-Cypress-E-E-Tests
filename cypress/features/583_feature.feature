Feature: 583
  583 feature scenarios

@583 @1
Scenario: Continue using cached JWKS during outage
    Given Router cache populated
    Then Disable JWKS endpoint. Previously valid tokens continue working using cached key Send authenticated request before cache expiry.
