Feature: 818
  818 feature scenarios

@818 @medium
Scenario: Security:OTP verification rejected after lockout
    Given Authentication session locked
    Then Submit correct OTP Authentication rejected due to lockout
