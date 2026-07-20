Feature: 821
  821 feature scenarios

@821 @medium
Scenario: Happy Path:Registered phone requests password reset
    Given Registered phone exists
    Then Submit forgot password request using phone HTTP 202 returned, reset process initiated
