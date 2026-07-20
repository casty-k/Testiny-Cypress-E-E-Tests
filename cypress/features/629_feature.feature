Feature: 629
  629 feature scenarios

@629 @1
Scenario: Wrong cookie name treated as missing token
    Given JWT placed in a cookie other than os2_access_token
    Then Send request with the token in an unexpected cookie name. Treated as unauthenticated and HTTP 401 returned
