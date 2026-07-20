Feature: 723
  723 feature scenarios

@723 @medium
Scenario: Registration - Contract & Vehicle Type - P04-010 - Registration succeeds if contract_type omitted (not hard gate)
    Given Registration form without contract_type field.
    Then Submit to customer.create. Treated as optional.
