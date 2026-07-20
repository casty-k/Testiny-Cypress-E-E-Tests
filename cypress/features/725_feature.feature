Feature: 725
  725 feature scenarios

@725 @medium
Scenario: Registration - Contract & Vehicle Type - P04-012 - Invalid contract_type value
    Given Registration with contract_type=invalid_type.
    Then Submit to customer.create. HTTP 400 returned.
