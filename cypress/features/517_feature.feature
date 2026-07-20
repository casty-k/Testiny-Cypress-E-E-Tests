Feature: 517
  517 feature scenarios

@517 @1
Scenario: Invalid Credentials: Empty email field shows inline validation — API is not called
    Given Given the user leaves the email field empty and enters a password
    Then When the login form is submitted Then POST /auth/login is not called     And an inline validation error is shown on the email field
