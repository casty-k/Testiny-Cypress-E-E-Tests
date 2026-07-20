Feature: 624
  624 feature scenarios

@624 @1
Scenario: CSRF protection for cookie-based requests
    Given CSRF prevention enabled; cookie auth in use
    Then Send a cross-site style request lacking the required CSRF header or non-simple content type. Request is rejected by CSRF prevention before authentication and routing
