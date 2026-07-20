Feature: 749
  749 feature scenarios

@749 @medium
Scenario: Cross-Cutting - Events - CC-015 - gw.prospect.routed_to_nurture event published
    Given Warm or cold band prospect. Capture completes.
    Then Publish routing event. gw.prospect.routed_to_nurture emitted.
