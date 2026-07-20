Feature: 824
  824 feature scenarios

@824 @medium
Scenario: Business Rule:Password reset email delivered
    Given Registered email exists
    Then Submit forgot password request Password reset email received with reset link
