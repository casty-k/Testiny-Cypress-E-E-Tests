Feature: 611
  611 feature scenarios

@611 @1
Scenario: Reject empty authentication cookie
    Given None
    Then Send request with empty os2_access_token cookie. HTTP 401 returned
