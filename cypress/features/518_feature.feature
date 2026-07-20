Feature: 518
  518 feature scenarios

@518 @1
Scenario: Invalid Credentials:Empty password field shows inline validation — API is not called
    Given Given the user enters an email and leaves the password field empty
    Then When the login form is submitted  Then POST /auth/login is not called   And an inline validation error is shown on the password field
