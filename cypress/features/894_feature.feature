Feature: 894
  894 feature scenarios

@894 @medium
Scenario: Self-Capture Page - CO-ACQ-01 - SC-010 - Consent decline sets marketing-opt-out but does not block progression
    Then The Prospect is tagged marketing-opt-out, the tag travels with the record to every downstream process, and the prospect still proceeds through scoring and routing as normal.
