Feature: 741
  741 feature scenarios

@741 @medium
Scenario: Cross-Cutting - Market-Scoped - CC-007 - Policy rubric applied per market
    Given Policy KE: {hot ≥7, warm 4-6, cold <4}. Policy UG: {hot ≥8, warm 5-7, cold <5}. Prospect in KE scores 7. Prospect in UG scores 7.
    Then Score KE prospect at KE prospect classified hot. Score UG prospect at 7. UG prospect classified warm.
