Feature: 813
  813 feature scenarios

@813 @medium
Scenario: Security:First invalid OTP attempt counted
    Given Valid OTP exists
    Then Submit incorrect OTP HTTP 401 returned and failed attempt count incremented
