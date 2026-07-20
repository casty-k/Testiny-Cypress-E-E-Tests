Feature: 737
  737 feature scenarios

@737 @medium
Scenario: Cross-Cutting - rule_version - CC-003 - Policy update does NOT retroactively change rule_version
    Given prospect_captured_fact written with rule_version=3. Policy updated to version 4. Historic facts queried.
    Then Query historic facts. rule_version still=3 (unchanged).
