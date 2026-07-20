Feature: 617
  617 feature scenarios

@617 @medium
Scenario: GraphQL endpoint requires authentication
    Given Router running
    Then Send anonymous GraphQL request. HTTP 401 returned before routing
