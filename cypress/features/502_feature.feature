Feature: 502
  502 feature scenarios

@502 @medium
Scenario: Assign Role:Admin successfully assigns a role to a user
    Given Given I am viewing a user's profile who does not have "finance_ops.collections.associate"
    Then When I select "Assign Role" And I choose "finance_ops.collections.associate" from the available roles list And I save the change Then a new row is written to role_assignment_facts with the correct role and actor And the user's profile now shows "finance_ops.collections.associate" in their role list And the user's next JWT will contain the new role claim
