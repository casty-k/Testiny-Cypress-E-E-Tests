Feature: 549
  549 feature scenarios

@549 @medium
Scenario: Table Structure:All required identity tables are present after migration
    Given Identity Schema Foundation — gw-user-mgmt-svc RDS
  As a QA engineer
  I want to verify the identity schema migration on gw-user-mgmt-svc RDS
  So that the authentication and authorisation layer has a stable, contract-compliant data foundation before any endpoint is implemented
 
  Background:
    Given the identity schema migration has been applied to the dev RDS instance
    And the migration tooling (downgrade script) is available
