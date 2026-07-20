Feature: 809
  809 feature scenarios

@809 @medium
Scenario: Notification:OTP SMS delivered to Ghana user
    Given Registered Ghanaian user exists
    Then Submit valid phone and password HTTP 200 returned and OTP SMS delivered to registered Ghanaian phone
