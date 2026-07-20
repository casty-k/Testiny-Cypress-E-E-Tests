Feature: 512
  512 feature scenarios

@512 @1
Scenario: Access Control:Unauthenticated request to role management is rejected
    Given Given I have no active session
    Then When I attempt to navigate to the role management page Then I am redirected to /login
