Feature: 715
  715 feature scenarios

@715 @medium
Scenario: Registration - P04-002 - Registration with soft-gap flags attached to customer
    Given Gate evaluation returned soft_gates_unresolved: ['driving_licence']. Registration form submitted.
    Then Execute customer.create. customer_projections shows soft_gap_flags=['driving_licence'].
