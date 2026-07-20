Feature: 566
  566 feature scenarios

@566 @medium
Scenario: JWT verification - Valid Bearer token accepted
    Given Valid RS256 JWT in Authorization header
    Then Send GraphQL request using Authorization Bearer token. Request succeeds with HTTP 200
