Feature: 835
  835 feature scenarios

@835 @medium
Scenario: Security:Cookie belonging to another user returns corresponding claims
    Given Valid cookie from different test account
    Then Call GET /me using second user's cookie Claims returned belong only to authenticated cookie owner
