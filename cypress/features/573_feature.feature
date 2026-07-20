Feature: 573
  573 feature scenarios

@573 @medium
Scenario: Reject expired JWT
    Given Expired JWT available
    Then Send request with expired JWT. HTTP 401 returned
