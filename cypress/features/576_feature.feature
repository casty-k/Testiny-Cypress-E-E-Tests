Feature: 576
  576 feature scenarios

@576 @1
Scenario: Reject unknown kid
    Given JWT contains unknown kid
    Then Send request. HTTP 401 returned
