Feature: 584
  584 feature scenarios

@584 @1
Scenario: Accept rotated key after refresh
    Given New and old signing keys configured
    Then Rotate keys. New key accepted and existing key remains valid until removed Refresh JWKS. Test old and new tokens.
