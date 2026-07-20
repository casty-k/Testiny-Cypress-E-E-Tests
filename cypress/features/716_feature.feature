Feature: 716
  716 feature scenarios

@716 @medium
Scenario: Registration - P04-003 - Registration with proceed_with_flags
    Given Gate decision=proceed_with_flags. Form submitted with valid national_id.
    Then Call customer.create. Customer record created.
