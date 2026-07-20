Feature: 815
  815 feature scenarios

@815 @medium
Scenario: Security:Third invalid OTP attempt counted
    Given Two previous failed attempts exist
    Then Submit incorrect OTP HTTP 401 returned and failed attempt count incremented
