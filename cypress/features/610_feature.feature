Feature: 610
  610 feature scenarios

@610 @1
Scenario: Reject JWT with missing required claims
    Given JWT missing sub or required custom claims
    Then Send request. HTTP 401 returned
