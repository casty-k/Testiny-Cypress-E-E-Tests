Feature: 755
  755 feature scenarios

@755 @medium
Scenario: Cross-Cutting - Audit - CC-021 - Immutable audit facts written for all commands
    Given Any capture, sync, touchpoint, extend, mark_ready command executed.
    Then Execute command. Immutable fact record written with command_type, aggregate_id, timestamp, actor_id, data payload.
