Feature: 530
  530 feature scenarios

@530 @medium
Scenario: Invalid Credentials:Wrong password returns 401 with non-specific message
    Given Given a valid employee email and an incorrect password
    Then When POST /auth/login is called Then the response status is 401     And the response body contains "Invalid email or password"     And no cookie is set     And no row is written to user_logged_in_facts
