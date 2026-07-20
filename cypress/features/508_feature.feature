Feature: 508
  508 feature scenarios

@508 @1
Scenario: Permissions Update:Unassigned role is denied on next login
    Given Given a role has been unassigned from a user
    Then When the user logs out and logs back in Then their new JWT does not contain the removed role And they are denied access to actions that required that role
