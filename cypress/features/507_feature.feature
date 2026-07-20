Feature: 507
  507 feature scenarios

@507 @medium
Scenario: Permissions Update:Assigned role takes effect on next login
    Given Given a role has been assigned to a user
    Then When the user logs out and logs back in Then their new JWT contains the newly assigned role And they can access pages and perform actions permitted by that role
