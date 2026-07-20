Feature: 608
  608 feature scenarios

@608 @1
Scenario: Handle token expiry during SSE
    Given Authenticated SSE active
    Then Allow token to expire during active connection. Connection handled according to configured policy
