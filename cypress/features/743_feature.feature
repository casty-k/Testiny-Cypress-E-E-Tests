Feature: 743
  743 feature scenarios

@743 @medium
Scenario: Cross-Cutting - Market-Scoped - CC-009 - Cold cutoff value per market
    Given KE policy: cold_cutoff=14 days. UG policy: cold_cutoff=21 days.
    Then Run nightly scheduler. Cold-drop fires based on respective market cutoff.
