Feature: 748
  748 feature scenarios

@748 @medium
Scenario: Cross-Cutting - Events - CC-014 - gw.prospect.routed_to_conversion event published
    Given Hot band prospect scored. Capture completes.
    Then Publish routing event. gw.prospect.routed_to_conversion emitted to outbox.
