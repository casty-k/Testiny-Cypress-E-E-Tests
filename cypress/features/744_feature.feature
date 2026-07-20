Feature: 744
  744 feature scenarios

@744 @medium
Scenario: Cross-Cutting - Idempotency - CC-010 - prospect_captured_fact idempotency key
    Given Phone=+254712345678, market=KE.
    Then Compute idempotency_key: SHA256('+254712345678' + 'KE'). Same phone+market always generates same key.
