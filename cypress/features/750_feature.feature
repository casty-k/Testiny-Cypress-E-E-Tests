Feature: 750
  750 feature scenarios

@750 @medium
Scenario: Cross-Cutting - Events - CC-016 - gw.prospect.touchpoint_logged event published
    Given Touchpoint logged for any channel. POST /api/v1/commands/prospect/log_touchpoint succeeds.
    Then Publish touchpoint event. gw.prospect.touchpoint_logged emitted.
