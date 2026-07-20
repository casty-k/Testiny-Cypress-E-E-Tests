Feature: 838
  838 feature scenarios

@838 @medium
Scenario: End-to-End:Password reset to successful login
    Given Registered active user exists
    Then Request password reset Password reset completes and user authenticates with new password Open reset link Verify OTP Reset password Login
