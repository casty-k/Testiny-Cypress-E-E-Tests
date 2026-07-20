Feature: 563
  563 feature scenarios

@563 @medium
Scenario: JWT verification - JWKS retrieved on startup
    Given Router configured with valid JWKS endpoint
    Then Start Apollo Router. Router retrieves RS256 public key successfully and initializes JWT verification Observe startup logs. Verify JWKS retrieval.
