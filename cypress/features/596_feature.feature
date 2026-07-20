Feature: 596
  596 feature scenarios

@596 @medium
Scenario: Disable introspection in production
    Given Production configuration active
    Then Execute introspection query. Request denied
