Feature: 746
  746 feature scenarios

@746 @medium
Scenario: Cross-Cutting - Idempotency - CC-012 - customer_created_facts idempotency key
    Given National_id=KE123456789, market=KE.
    Then Compute idempotency_key = SHA256('KE123456789' + 'KE'). Same national_id+market always same key.
