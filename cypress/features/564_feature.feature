Feature: 564
  564 feature scenarios

@564 @1
Scenario: JWT verification - JWKS cache reused
    Given Router running with cached JWKS
    Then Send multiple authenticated requests. JWKS is fetched once within cache TTL and reused for subsequent requests Monitor JWKS requests.
