Feature: 516
  516 feature scenarios

@516 @1
Scenario: Invalid Credentials:Invalid credentials show non-specific error message
    Given Given the user enters a valid email and incorrect password
    Then When the login form is submitted Then POST /auth/login returns 401
And the error message "Invalid email or password" is displayed on the form  And the user remains on /login  And the email field retains its value  And the password field is cleared
