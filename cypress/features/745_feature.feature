Feature: 745
  745 feature scenarios

@745 @medium
Scenario: Cross-Cutting - Idempotency - CC-011 - Resubmit same capture request (same idempotency key)
    Given First capture submitted: prospect_id=p-123 created. Identical capture resubmitted.
    Then Resubmit identical capture. Compute same idempotency_key.
