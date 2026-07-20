Feature: 826
  826 feature scenarios

@826 @medium
Scenario: Business Rule:Latest reset request invalidates previous reset token
    Given Existing valid reset token
    Then Request another password reset Previous reset token invalidated
