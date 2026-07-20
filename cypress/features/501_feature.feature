Feature: 501
  501 feature scenarios

@501 @medium
Scenario: View Roles:User with no roles assigned shows empty role list
    Given Given a user has no roles in role_assignment_facts
    Then When I navigate to their profile Then the roles section displays "No roles assigned"
