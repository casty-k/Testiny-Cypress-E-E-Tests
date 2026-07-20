Feature: 812
  812 feature scenarios

@812 @medium
Scenario: Notification:OTP delivery fails after maximum retries
    Given SMS provider unavailable
    Then Submit valid credentials Retry limit reached, failure logged and appropriate response generated
