Feature: 829
  829 feature scenarios

@829 @medium
Scenario: Business Rule:User logs in successfully with new password
    Given Password successfully changed
    Then Login using new password Authentication succeeds and OTP generated
