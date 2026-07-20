Feature: 726
  726 feature scenarios

@726 @medium
Scenario: Registration - Contract & Vehicle Type - P04-013 - Contract and vehicle type preferences available for Process 05
    Given A customer created with contract_type=LTO, vehicle_type=new_arc. Process 05 (contract execution) queries customer record.
    Then Query customer record. contract_type_preference returned.
