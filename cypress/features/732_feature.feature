Feature: 732
  732 feature scenarios

@732 @medium
Scenario: Registration - Idempotency - P04-019 - Idempotency: resubmit same registration (same national_id)
    Given Registration submitted with national_id=KE123456789. Customer_created_facts with idempotency_key=SHA256(KE123456789+KE) created. Same registration resubmitted.
    Then Resubmit identical registration. Check idempotency key.
