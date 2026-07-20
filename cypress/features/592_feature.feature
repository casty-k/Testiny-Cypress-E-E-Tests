Feature: 592
  592 feature scenarios

@592 @1
Scenario: Strip spoofed x-actor-id
    Given Client sends x-actor-id header
    Then Send authenticated request with forged x-actor-id. Client value removed and verified JWT value injected
