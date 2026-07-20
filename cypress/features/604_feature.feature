Feature: 604
  604 feature scenarios

@604 @1
Scenario: CI/CD deployment pipeline
    Given Pipeline configured
    Then Merge change to main. Composition validation and deployment complete successfully
