Feature: 636
  636 feature scenarios

@636 @3
Scenario: Graceful shutdown drains in-flight requests
    Given Router actively receiving traffic
    Then Send SIGTERM during active requests. In-flight requests complete, no new requests are accepted, and shutdown is clean
