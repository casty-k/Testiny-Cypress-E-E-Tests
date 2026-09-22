Feature: 1226
  1226 feature scenarios

@1226 @medium
Scenario: closed_unreachable ticket does not fire CSAT
    Then csatState reflects not_applicable or equivalent; no CSAT dispatch occurred; ticket excluded from CSAT response-rate population
