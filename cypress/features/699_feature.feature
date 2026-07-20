Feature: 699
  699 feature scenarios

@699 @medium
Scenario: Cold-Drop Scheduler - P02-024 - Cold-drop fires at correct scheduled time (02:00 EAT)
    Given EventBridge rule scheduled for 02:00 EAT daily.
    Then 02:00 EAT arrives. Cold-cutoff evaluation job triggered.
