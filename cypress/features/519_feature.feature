Feature: 519
  519 feature scenarios

@519 @1
Scenario: Session Expiry:Expired JWT redirects to login with session expiry message
    Given Given a user's JWT has expired
    Then When they attempt to navigate to any protected route   And Apollo Router returns 401 on their next GraphQL request Then they are redirected to /login  And the message "Your session has expired. Please log in again." is displayed
