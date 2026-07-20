Feature: 630
  630 feature scenarios

@630 @1
Scenario: Conflicting valid tokens follow precedence
    Given Different valid JWTs in cookie and Authorization header
    Then Send request containing both valid tokens. Documented precedence source is used consistently and injected identity reflects only that source
