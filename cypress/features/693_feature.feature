Feature: 693
  693 feature scenarios

@693 @medium
Scenario: Marking Ready - P02-018 - Mark ready for prospect already ready (idempotent)
    Given A prospect with status='ready'.
    Then Submit mark_ready command again. Status verified as ready.
