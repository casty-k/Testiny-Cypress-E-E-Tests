Feature: 639
  639 feature scenarios

@639 @1
Scenario: Metrics endpoint exposed
    Given Telemetry metrics configured
    Then Scrape the metrics endpoint. Router exposes request, latency, and error metrics per configuration
