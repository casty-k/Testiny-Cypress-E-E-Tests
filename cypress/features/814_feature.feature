Feature: 814
  814 feature scenarios

@814 @medium
Scenario: Security:Second invalid OTP attempt counted
    Given One previous failed attempt exists
    Then Submit incorrect OTP HTTP 401 returned and failed attempt count incremented
