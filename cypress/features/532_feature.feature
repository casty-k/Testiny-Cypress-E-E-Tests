Feature: 532
  532 feature scenarios

@532 @medium
Scenario: Invalid Credentials:Deactivated employee cannot log in
    Given Given an employee whose record is marked inactive in identity.user_facts
    Then When POST /auth/login is called with their credentials Then the response status is 401
 And no cookie is set
