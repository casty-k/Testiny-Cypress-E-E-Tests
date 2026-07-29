Feature: 895
  895 feature scenarios

@895 @medium
Scenario: Self-Capture Page - CO-ACQ-01 - SC-011 - Capture-source branch always routes self-capture to CO-ACQ-02 Nurture
    Then The prospect is routed to CO-ACQ-02 Nurture tagged with their inferred interest level; inline qualification never runs for a self-captured prospect.
