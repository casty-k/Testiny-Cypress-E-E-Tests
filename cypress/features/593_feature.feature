Feature: 593
  593 feature scenarios

@593 @1
Scenario: Strip spoofed context headers
    Given Client sends x-context-id and x-roles
    Then Send authenticated request. Client headers removed and verified values injected
