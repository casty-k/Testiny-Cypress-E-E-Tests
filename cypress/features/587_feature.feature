Feature: 587
  587 feature scenarios

@587 @1
Scenario: Hot reload supergraph schema
    Given Schema registry or composition configured
    Then Publish schema change. Updated schema becomes available without restart Observe Router.
