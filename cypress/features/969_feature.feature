Feature: 969
  969 feature scenarios

@969 @medium
Scenario: EOD reservation lapse (CO-ACQ-06/07) — transient, may re-enter to re-select
    Then The lapse is treated as transient: the prospect may re-enter to re-select. Where the lapsed reservation was specific-unit, the plate is explicitly released back to the allocatable pool; where it was category-level, the count simply lapses with nothing to release.
