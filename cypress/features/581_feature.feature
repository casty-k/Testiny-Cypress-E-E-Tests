Feature: 581
  581 feature scenarios

@581 @1
Scenario: Reject unsupported algorithm
    Given JWT uses alg none or HS256
    Then Send request. HTTP 401 returned
