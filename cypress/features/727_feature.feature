Feature: 727
  727 feature scenarios

@727 @medium
Scenario: Registration - Validation - P04-014 - Registration fails if national_id is missing (required field)
    Given Registration form without national_id.
    Then Submit to customer.create. HTTP 400 returned.
