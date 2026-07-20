Feature: 724
  724 feature scenarios

@724 @medium
Scenario: Registration - Contract & Vehicle Type - P04-011 - Registration succeeds if vehicle_type omitted (not hard gate)
    Given Registration form without vehicle_type field.
    Then Submit to customer.create. Customer record created.
