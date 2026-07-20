Feature: 825
  825 feature scenarios

@825 @medium
Scenario: Business Rule:Reset link generates OTP
    Given Password reset email received
    Then Open reset link OTP generated and delivered to registered identifier
