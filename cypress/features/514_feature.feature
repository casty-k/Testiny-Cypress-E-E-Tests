Feature: 514
  514 feature scenarios

@514 @1
Scenario: Happy Path:User is redirected to a role-appropriate page
    Given Given a user with role "finance_ops.collections.associate" enters valid credentials
    Then When the login form is submitted Then the user is redirected to the Collections dashboard  And they cannot navigate to pages restricted to other roles
