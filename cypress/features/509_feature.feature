Feature: 509
  509 feature scenarios

@509 @1
Scenario: Permissions Update:Active session is not affected until next login
    Given Given a user is currently logged in with role "finance_ops.collections.associate"
    Then When an Admin unassigns that role Then the user's current session retains the role until the JWT expires And after expiry and re-login the role is no longer present
