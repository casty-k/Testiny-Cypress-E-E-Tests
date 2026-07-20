Feature: 730
  730 feature scenarios

@730 @medium
Scenario: Registration - Validation - P04-017 - Registration with invalid national_id format
    Given Registration with national_id=INVALID (doesn't match country format).
    Then Submit to customer.create. Validate against policy.
