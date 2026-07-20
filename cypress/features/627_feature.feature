Feature: 627
  627 feature scenarios

@627 @2
Scenario: Correct key selected by kid among multiple keys
    Given JWKS contains multiple keys with distinct kids
    Then Send a JWT signed with the second key's kid. Router selects the matching key by kid and verifies successfully
