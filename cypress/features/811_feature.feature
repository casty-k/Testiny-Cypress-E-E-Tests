Feature: 811
  811 feature scenarios

@811 @medium
Scenario: Notification:OTP delivery succeeds after retry
    Given SMS provider fails once then recovers
    Then Submit valid credentials OTP successfully delivered after retry
