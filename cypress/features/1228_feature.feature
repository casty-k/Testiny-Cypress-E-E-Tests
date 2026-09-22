Feature: 1228
  1228 feature scenarios

@1228 @medium
Scenario: Touch-point recorded mid-sequence blocks unreachable exit
    Then Ticket must NOT auto-close to closed_unreachable since a two-way touch-point exists in the sequence — confirm this interpretation with dev as CO-SUP-03 §8 does not explicitly address a touch-point appearing mid-sequence
