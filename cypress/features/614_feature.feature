Feature: 614
  614 feature scenarios

@614 @1
Scenario: Reject oversized JWT
    Given JWT exceeds configured limits
    Then Send oversized JWT. Request rejected with appropriate HTTP status
