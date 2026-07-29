Feature: 896
  896 feature scenarios

@896 @medium
Scenario: Self-Capture Page - CO-ACQ-01 - SC-012 - Direct-convert path never fires for self-capture even with all qualification inputs present
    Then CO-ACQ-03 inline qualification is NOT triggered and the prospect is still routed to CO-ACQ-02 Nurture; the direct-convert path is available to agent capture only.
