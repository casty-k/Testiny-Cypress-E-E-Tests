Feature: 515
  515 feature scenarios

@515 @1
Scenario: Happy Path:No token is stored in localStorage or sessionStorage
    Given Given a user logs in successfully
    Then Given a user logs in successfully Then localStorage does not contain a JWT or token value     And sessionStorage does not contain a JWT or token value     And the GraphQL Apollo client does not hold the raw JWT in application state
