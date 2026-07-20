Feature: 500
  500 feature scenarios

@500 @medium
Scenario: View Roles: Admin views a user's currently assigned roles
    Given Given I navigate to the profile of user "james.kamau@greenwheels.africa"
    Then Given I navigate to the profile of user "james.kamau@greenwheels.africa" Then I can see their currently assigned roles listed on the profile page And the roles match the records in role_assignment_facts for that user
