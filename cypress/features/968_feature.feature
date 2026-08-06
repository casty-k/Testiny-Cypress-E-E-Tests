Feature: 968
  968 feature scenarios

@968 @medium
Scenario: Transient trigger never fires — caught by periodic stuck-transient audit
    Then The stuck case is surfaced by a periodic audit of stuck transient cases rather than remaining silently missed indefinitely.
