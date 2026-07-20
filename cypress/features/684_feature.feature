Feature: 684
  684 feature scenarios

@684 @medium
Scenario: Touchpoint Logging - P02-009 - Touchpoint with invalid channel
    Given A touchpoint submission with channel='telegram' (not supported).
    Then Submit touchpoint with unsupported channel. HTTP 400 returned.
