Feature: 618
  618 feature scenarios

@618 @1
Scenario: Startup logs do not expose secrets
    Given Router starting
    Then Review startup logs. No JWTs signing keys or sensitive values appear in logs
