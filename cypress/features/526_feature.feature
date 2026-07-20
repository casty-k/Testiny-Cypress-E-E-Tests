Feature: 526
  526 feature scenarios

@526 @medium
Scenario: Happy Path:Issued JWT contains all required claims
    Given Given a valid employee logs in successfully
    Then When the JWT is decoded from the session cookie Then it contains claim "sub" as a UUID     And it contains claim "actor_id" matching the employee email     And it contains claim "context_id" matching the employee market     And it contains claim "roles" as a non-empty array     And it contains claim "markets" as a non-empty array     And it contains claim "sites" as a non-empty array     And it contains claim "iss" equal to "gw-user-mgmt-svc"     And it contains claim "aud" equal to "gw-os2"     And it contains claim "exp" set to a future timestamp
