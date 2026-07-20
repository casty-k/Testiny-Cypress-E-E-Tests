Feature: 531
  531 feature scenarios

@531 @1
Scenario: Invalid credentials:Unknown email returns 401 — no user enumeration
    Given Given an email that does not exist in identity.user_facts
    Then When POST /auth/login is called Then the response status is 401
And the response body contains "Invalid email or password"  And the error message is identical to the wrong-password response
