Feature: 599
  599 feature scenarios

@599 @1
Scenario: Health endpoint returns success
    Given Router running
    Then Call health endpoint. HTTP 200 returned
