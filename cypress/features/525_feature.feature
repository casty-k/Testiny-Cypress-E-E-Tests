Feature: 525
  525 feature scenarios

@525 @medium
Scenario: Happy Path:Successful login returns HTTP 200 and sets secure cookie
    Given Given a valid employee email "sarah.wanjiku@greenwheels.africa" and correct password
    Then When POST /auth/login is called with those credentials Then the response status is 200     And the response sets a cookie named "os2_session"     And the cookie has the HttpOnly flag     And the cookie has the Secure flag     And the cookie has SameSite=Strict
