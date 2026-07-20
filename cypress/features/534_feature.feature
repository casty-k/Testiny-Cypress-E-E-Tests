Feature: 534
  534 feature scenarios

@534 @medium
Scenario: Request Validation:Missing password field returns 422
    Given Given a login request body with no password field
