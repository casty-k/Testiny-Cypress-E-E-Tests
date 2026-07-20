Feature: 752
  752 feature scenarios

@752 @medium
Scenario: Cross-Cutting - Events - CC-018 - gw.prospect.cold_dropped event published
    Given Cold-drop fires via nightly scheduler. Prospect marked cold.
    Then Publish cold-drop event. gw.prospect.cold_dropped emitted.
