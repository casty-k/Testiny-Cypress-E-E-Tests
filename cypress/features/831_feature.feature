Feature: 831
  831 feature scenarios

@831 @medium
Scenario: Validation:Weak password rejected
    Given Valid activation token
    Then Submit password not meeting policy HTTP 422 with password policy validation message
