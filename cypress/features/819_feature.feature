Feature: 819
  819 feature scenarios

@819 @medium
Scenario: Business Rule:Requesting a new OTP invalidates previous OTP
    Given Valid OTP already issued
    Then Request another OTP Old OTP rejected, latest OTP accepted Verify old OTP Verify new OTP
