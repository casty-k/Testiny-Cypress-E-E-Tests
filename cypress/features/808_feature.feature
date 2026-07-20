Feature: 808
  808 feature scenarios

@808 @medium
Scenario: Notification:OTP SMS delivered to Uganda user
    Given Registered Ugandan user exists
    Then Submit valid phone and password HTTP 200 returned and OTP SMS delivered to registered Ugandan phone
