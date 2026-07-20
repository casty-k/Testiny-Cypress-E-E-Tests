Feature: 722
  722 feature scenarios

@722 @medium
Scenario: Registration - Contract & Vehicle Type - P04-009 - Contract type and vehicle type persisted as preferences
    Given Registration form with contract_type=LTO, vehicle_type=new_arc.
    Then Submit to customer.create. customer_projections contains contract_type_preference=LTO.
