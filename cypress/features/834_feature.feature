Feature: 834
  834 feature scenarios

@834 @medium
Scenario: Business Rule:Reset audit event recorded
    Given Successful password reset completed
    Then Complete password reset Password reset event recorded successfully Verify audit log
