Feature: 962
  962 feature scenarios

@962 @medium
Scenario: Onboarding-exit (DRIVER cause) — cooling-off, then standard re-warm
    Then The case is suppressed for the configured onboarding_exit.cooling_off_days cooling-off period, after which it enters standard re-warm. Re-entry, when it happens, is at CO-ACQ-01 for a fresh run, same as every other class.
