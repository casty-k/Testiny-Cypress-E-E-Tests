Feature: 729
  729 feature scenarios

@729 @medium
Scenario: Registration - Validation - P04-016 - Registration fails if email is missing (pre-filled, required)
    Given Email should be pre-filled. Form submitted without email.
    Then Call customer.create. HTTP 400 returned.
