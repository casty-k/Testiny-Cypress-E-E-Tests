Feature: 603
  603 feature scenarios

@603 @2
Scenario: Auto scaling under load
    Given Production deployment configured
    Then Generate sustained load. Additional tasks created and later scaled down Observe scaling.
