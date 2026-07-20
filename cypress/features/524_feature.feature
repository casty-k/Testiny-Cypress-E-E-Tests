Feature: 524
  524 feature scenarios

@524 @1
Scenario: Security: GraphQL requests use the cookie — no Authorization header set by the client
    Given Given a user is logged in
    Then When a GraphQL mutation is sent from the frontend  Then no Authorization header is manually attached by the client     And Apollo Router reads the session cookie directly
