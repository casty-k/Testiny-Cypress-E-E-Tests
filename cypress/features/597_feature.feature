Feature: 597
  597 feature scenarios

@597 @medium
Scenario: Disable Apollo Sandbox in production
    Given Production configuration active
    Then Access Sandbox endpoint. Sandbox unavailable
