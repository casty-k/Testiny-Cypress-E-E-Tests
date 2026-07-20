Feature: 521
  521 feature scenarios

@521 @1
Scenario: Session Expiry:After expiry, user is returned to their originally requested page post-login
    Given Given a user's session expired while they were on /contracts
    Then When they log in again Then they are redirected back to /contracts
