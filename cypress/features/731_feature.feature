Feature: 731
  731 feature scenarios

@731 @medium
Scenario: Registration - Validation - P04-018 - Registration form in offline mode (queued for sync)
    Given Network connectivity lost during registration.
    Then Submit form. Submission queued locally.
