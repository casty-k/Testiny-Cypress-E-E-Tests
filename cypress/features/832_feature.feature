Feature: 832
  832 feature scenarios

@832 @medium
Scenario: Validation:Weak password rejected
    Given Valid reset token and OTP
    Then Submit weak password HTTP 422 validation error
