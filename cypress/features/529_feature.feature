Feature: 529
  529 feature scenarios

@529 @medium
Scenario: Happy Path:Successful login is recorded in user_logged_in_facts
    Given Given a valid employee email and correct password
    Then When POST /auth/login is called  Then a row is written to user_logged_in_facts
And the row contains the correct actor_id, context_id, and timestamp
