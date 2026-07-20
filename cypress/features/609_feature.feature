Feature: 609
  609 feature scenarios

@609 @1
Scenario: Reject revoked JWT
    Given JWT revocation mechanism configured
    Then Revoke valid token. Request rejected with HTTP 401 Send request.
