Feature: 837
  837 feature scenarios

@837 @medium
Scenario: End-to-End:Login to authenticated session complete
    Given Registered active user exists
    Then Login Entire authentication flow completes successfully Receive OTP Verify OTP Call /me
