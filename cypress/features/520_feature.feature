Feature: 520
  520 feature scenarios

@520 @1
Scenario: Session Expiry:Unauthenticated user accessing a protected route is redirected to login
    Given Given a user has no active session cookie
    Then When they navigate directly to /dashboard Then they are redirected to /login
And no session expiry message is shown
