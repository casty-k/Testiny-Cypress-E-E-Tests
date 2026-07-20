Feature: 810
  810 feature scenarios

@810 @medium
Scenario: Notification:OTP delivery failure triggers retry
    Given SMS provider configured to simulate failure
    Then Submit valid credentials Retry mechanism initiated according to configured retry policy Simulate SMS provider failure
