Feature: 504
  504 feature scenarios

@504 @medium
Scenario: Assign Role:Admin cannot assign a role the user already has  
    Given Given a user already has role "finance_ops.collections.associate"
    Then When I open the "Assign Role" selector Then "finance_ops.collections.associate" is not available to assign again
