Feature: 966
  966 feature scenarios

@966 @medium
Scenario: Win-back with no Customer Risk process yet — held, not re-warmed (fail-safe)
    Then The case is held pending the Risk gate rather than being re-warmed or dropped (fail-safe behaviour), until Customer Risk exists to clear or block it.
