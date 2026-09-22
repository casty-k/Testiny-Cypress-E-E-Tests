Feature: 1231
  1231 feature scenarios

@1231 @medium
Scenario: CSAT not dispatched on closed_unreachable exit
    Then csatState remains null/not_applicable; no dispatch call made
