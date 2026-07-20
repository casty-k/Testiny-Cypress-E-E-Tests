Feature: 503
  503 feature scenarios

@503 @medium
Scenario: Assign Role:Available roles list only shows valid roles from role_mapping_reference_data
    Then When I open the "Assign Role" selector Then the list contains only roles defined in role_mapping_reference_data And no duplicate roles are shown
