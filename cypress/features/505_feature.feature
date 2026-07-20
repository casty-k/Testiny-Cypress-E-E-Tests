Feature: 505
  505 feature scenarios

@505 @medium
Scenario: Unassign Role:Admin successfully unassigns a role from a user
    Given Given a user has role "finance_ops.collections.associate" assigned
    Then When I select "Unassign" next to that role     And I confirm the removal Then the role is removed from the user's profile     And a role_unassigned_fact is written with the correct actor and timestamp     And the user's next JWT will not contain the removed role claim
