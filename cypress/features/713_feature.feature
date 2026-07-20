Feature: 713
  713 feature scenarios

@713 @medium
Scenario: KYC Gate Evaluation - Edge Cases - P03-013 - Policy change updates future gate evaluations
    Given Policy v1: national_id=hard, driving_licence=soft. Policy updated to v2: both soft.
    Then Run new gate evaluation. New evaluation uses v2 classifications.
