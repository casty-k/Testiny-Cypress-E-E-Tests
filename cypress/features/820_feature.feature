Feature: 820
  820 feature scenarios

@820 @medium
Scenario: Happy Path:Registered email requests password reset
    Given Registered email exists
    Then Submit forgot password request using email HTTP 202 returned, reset email generated and queued
