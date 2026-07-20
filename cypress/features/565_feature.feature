Feature: 565
  565 feature scenarios

@565 @medium
Scenario: JWT verification - Valid JWT cookie accepted
    Given Valid RS256 JWT present in os2_access_token cookie
    Then Send GraphQL request with valid cookie. Request succeeds with HTTP 200 and reaches target subgraph
