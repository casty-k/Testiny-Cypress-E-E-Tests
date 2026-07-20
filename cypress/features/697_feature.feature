Feature: 697
  697 feature scenarios

@697 @medium
Scenario: Cold-Drop Scheduler - P02-022 - Cold-drop does NOT fire if extension granted
    Given A prospect with nurture_entry_at=2026-06-30, extended_at=2026-07-12, extension_days=7.
    Then Nightly scheduler runs on 2026-07-14. Effective_entry_at calculated as 2026-07-12.
