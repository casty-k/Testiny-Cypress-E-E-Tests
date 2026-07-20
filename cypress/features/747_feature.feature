Feature: 747
  747 feature scenarios

@747 @medium
Scenario: Cross-Cutting - Idempotency - CC-013 - Registration resubmit with same national_id
    Given First registration: customer_id=c-123. Identical registration resubmitted.
    Then Resubmit identical registration. Return existing customer_id=c-123 (idempotent).
