Feature: 612
  612 feature scenarios

@612 @1
Scenario: Cookie takes precedence over malformed Authorization header
    Given Valid cookie and invalid Authorization header present
    Then Send request with both authentication methods. Authentication follows documented precedence without ambiguity
