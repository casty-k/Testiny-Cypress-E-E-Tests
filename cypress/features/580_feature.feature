Feature: 580
  580 feature scenarios

@580 @2
Scenario: Reject future nbf
    Given JWT contains future nbf claim
    Then Send request. HTTP 401 returned
