Feature: 582
  582 feature scenarios

@582 @1
Scenario: Refresh JWKS after TTL
    Given Configurable JWKS refresh interval
    Then Rotate signing key. New signing key is accepted after refresh Wait for refresh interval. Send request using new key.
