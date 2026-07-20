Feature: 754
  754 feature scenarios

@754 @medium
Scenario: Cross-Cutting - Events - CC-020 - All events contain required metadata
    Given Any domain event emitted.
    Then Check event JSON structure. Event includes event_type.
