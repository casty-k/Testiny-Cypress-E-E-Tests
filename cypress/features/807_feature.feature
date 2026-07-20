Feature: 807
  807 feature scenarios

@807 @medium
Scenario: Notification:OTP SMS delivered to Kenya user
    Given Registered Kenyan user exists
    Then Submit valid phone and password HTTP 200 returned and OTP SMS delivered to registered Kenyan phone
