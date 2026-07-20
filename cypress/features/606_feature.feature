Feature: 606
  606 feature scenarios

@606 @2
Scenario: Authenticated SSE connection
    Given Licensed federated subscriptions enabled
    Then Open SSE using valid JWT. Connection established and remains active
