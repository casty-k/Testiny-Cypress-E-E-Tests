Feature: 513
  513 feature scenarios

@513 @1
Scenario: Happy Path: Valid credentials redirect to OS2 dashboard
    Given Given the user enters a valid email and correct password
    Then When the login form is submitted Then POST /auth/login is called with the entered credentials     And the httpOnly session cookie is set by the browser     And the user is redirected to the OS2 dashboard     And subsequent GraphQL requests to Apollo Router are authenticated via the cookie
