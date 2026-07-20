Feature: 638
  638 feature scenarios

@638 @1
Scenario: Correlation or trace ID propagated
    Given Telemetry and tracing enabled
    Then Send a request with and without a trace id. A correlation/trace id is present on downstream requests and logs for end-to-end tracing Inspect subgraph headers and logs.
