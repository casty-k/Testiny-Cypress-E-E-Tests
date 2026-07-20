Feature: 574
  574 feature scenarios

@574 @medium
Scenario: Reject invalid signature
    Given Tampered JWT available
    Then Send request with modified JWT. HTTP 401 returned
