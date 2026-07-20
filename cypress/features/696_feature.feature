Feature: 696
  696 feature scenarios

@696 @medium
Scenario: Cold-Drop Scheduler - P02-021 - Cold-drop does NOT fire if within 14 days
    Given A prospect with nurture_entry_at=2026-07-07 (7 days ago).
    Then Nightly scheduler runs. Cold-drop logic skipped.
