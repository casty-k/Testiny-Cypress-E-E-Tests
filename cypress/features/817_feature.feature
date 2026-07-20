Feature: 817
  817 feature scenarios

@817 @medium
Scenario: Security:Fifth invalid OTP attempt locks authentication session
    Given Four previous failed attempts exist
    Then Submit incorrect OTP Authentication session locked after fifth failure
