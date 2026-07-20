Feature: 615
  615 feature scenarios

@615 @1
Scenario: Handle concurrent authentication requests
    Given Router running
    Then Send large number of concurrent authenticated requests. All requests processed successfully without authentication failures
