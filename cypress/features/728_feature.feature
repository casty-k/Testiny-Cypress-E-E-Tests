Feature: 728
  728 feature scenarios

@728 @medium
Scenario: Registration - Validation - P04-015 - Registration fails if phone is missing (pre-filled, required)
    Given Phone should be pre-filled. Form submitted without phone value.
    Then Call customer.create. HTTP 400 returned.
