Feature: 683
  683 feature scenarios

@683 @medium
Scenario: Touchpoint Logging - P02-008 - Touchpoint with missing required fields
    Given A touchpoint submission with missing outcome field.
    Then Submit to log_touchpoint endpoint without outcome. HTTP 400 returned.
