Feature: 622
  622 feature scenarios

@622 @1
Scenario: Configuration loaded from environment variables
    Given Environment variables configured
    Then Start Router. Router uses configured environment values without hardcoded secrets Verify runtime configuration.
