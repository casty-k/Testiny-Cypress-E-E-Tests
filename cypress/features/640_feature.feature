Feature: 640
  640 feature scenarios

@640 @1
Scenario: GraphQL POST requires JSON content type
    Given Router running
    Then Send a GraphQL POST using a non-JSON content type. Request is rejected or handled per policy and is not executed as a valid operation
