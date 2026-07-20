Feature: 510
  510 feature scenarios

@510 @1
Scenario: Access Control:Non-admin user cannot access role management
    Given Given I am logged in as a user without the "admin" role
    Then When I attempt to navigate to the role management page  Then I am denied access with a 403 error And a command_rejected_fact is written with my actor_id and the required role
