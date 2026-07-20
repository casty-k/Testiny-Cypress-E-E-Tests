Feature: 695
  695 feature scenarios

@695 @medium
Scenario: Cold-Drop Scheduler - P02-020 - Cold-drop fires for prospect 14 days in nurture (no extension)
    Given A prospect with prospect_id=p-123, status=in_nurture, nurture_entry_at=2026-06-30 10:00, current_time=2026-07-14 02:00.
    Then Nightly EventBridge rule fires at 02:00 EAT. Check if NOW() - nurture_entry_at > 14 days. Cold-cutoff evaluation job runs. Check no extension granted.
