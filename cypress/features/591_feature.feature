Feature: 591
  591 feature scenarios

@591 @1
Scenario: Reject invalid federation composition in CI
    Given CI pipeline configured
    Then Introduce invalid schema. Composition fails before deployment Execute pipeline.
