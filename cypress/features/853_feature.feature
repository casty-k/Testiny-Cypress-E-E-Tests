Feature: 853
  853 feature scenarios

@853 @medium
Scenario: All documents valid — customer becomes handover-eligible
    Then The customer is marked KYC-verified, which is one of the conditions — alongside payment and any outstanding readiness items — needed before handover can happen.
