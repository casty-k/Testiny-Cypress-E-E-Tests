Feature: 828
  828 feature scenarios

@828 @medium
Scenario: Business Rule:must_change_password flag cleared after successful password change
    Given User authenticated using temporary password
    Then Change password successfully must_change_password equals false Retrieve user claims
