Feature: 528
  528 feature scenarios

@528 @medium
Scenario: Happy Path:Apollo Router accepts the issued JWT on a subsequent GraphQL request
    Given Given a valid employee logs in and receives a session cookie
    Then When a GraphQL query is sent to Apollo Router with that cookie Then the router verifies the RS256 signature locally     And injects context_id, actor_id, and roles headers into the subgraph request     And the subgraph returns a 200 response
