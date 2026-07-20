Feature: 833
  833 feature scenarios

@833 @medium
Scenario: Business Rule:New password cannot match current password
    Given Valid reset token and OTP
    Then Submit existing password as new password Password reset rejected
