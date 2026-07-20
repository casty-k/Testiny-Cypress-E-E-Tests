Feature: 522
  522 feature scenarios

@522 @1
Scenario: Security:Session cookie is not readable via JavaScript
    Given Given a user is logged in
    Then When document.cookie is read in the browser console Then the session cookie value is not visible
