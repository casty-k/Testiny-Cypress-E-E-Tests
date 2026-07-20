Feature: 698
  698 feature scenarios

@698 @medium
Scenario: Cold-Drop Scheduler - P02-023 - Cold-drop scheduler batch processes multiple prospects
    Given 100 prospects in nurture: 30 (>14 days ago, no ext), 50 (<14 days ago), 20 (>14 days, extended).
    Then Nightly scheduler runs. All 100 processed independently.
