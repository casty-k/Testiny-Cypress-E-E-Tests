Feature: 816
  816 feature scenarios

@816 @medium
Scenario: Security:Fourth invalid OTP attempt counted
    Given Three previous failed attempts exist
    Then Submit incorrect OTP HTTP 401 returned and failed attempt count incremented
