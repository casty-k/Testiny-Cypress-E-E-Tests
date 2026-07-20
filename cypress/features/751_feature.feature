Feature: 751
  751 feature scenarios

@751 @medium
Scenario: Cross-Cutting - Events - CC-017 - gw.prospect.ready_for_conversion event published
    Given mark_ready command executed.
    Then Publish ready event. gw.prospect.ready_for_conversion emitted.
