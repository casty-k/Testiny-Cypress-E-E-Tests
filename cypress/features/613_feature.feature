Feature: 613
  613 feature scenarios

@613 @1
Scenario: Authorization header takes precedence when configured
    Given Router configured to prefer Authorization header
    Then Send valid Bearer token and invalid cookie. Configured authentication source is used consistently
