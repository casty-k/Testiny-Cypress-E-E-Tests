Feature: 533
  533 feature scenarios

@533 @medium
Scenario: Request Validation:Missing email field returns 422
    Given Given a login request body with no email field
    Then When POST /auth/login is called Then the response status is 422
