Feature: Nurture Pipeline
  P02 feature scenarios

@P02 @medium
Scenario: Prospect Entry into Nurture-P02-001 - Prospect enters nurture on warm routing event


@P02 @medium
Scenario: Prospect Entry in to nurture- P02-002 - Prospect enters nurture on cold routing event


@P02 @medium
Scenario: Prospect Entry in to nurture -P02-003 - Prospect already in nurture receives duplicate event (idempotent)


@P02 @medium
Scenario: Touchpoint Logging - P02-004 - Touchpoint logged: Call


@P02 @medium
Scenario: Touchpoint Logging - P02-005 - Touchpoint logged: WhatsApp


@P02 @medium
Scenario: Touchpoint Logging - P02-006 - Touchpoint logged: SMS


@P02 @medium
Scenario: Touchpoint Logging - P02-007 - Touchpoint logged: Email


@P02 @medium
Scenario: Touchpoint Logging - P02-008 - Touchpoint with missing required fields


@P02 @medium
Scenario: Touchpoint Logging - P02-009 - Touchpoint with invalid channel


@P02 @medium
Scenario: Touchpoint Logging - P02-010 - Touchpoint for prospect not in nurture


@P02 @medium
Scenario: Touchpoint Logging - P02-011 - Touchpoint with non-existent prospect_id


@P02 @medium
Scenario: Cutoff Extension - P02-012 - Cutoff extended by 7 days


@P02 @medium
Scenario: Cutoff Extension - P02-013 - Cutoff extended multiple times (re-entry)


@P02 @medium
Scenario: Cutoff Extension - P02-014 - Cutoff extension with 0 days (invalid)


@P02 @medium
Scenario: Cutoff Extension - P02-015 - Cutoff extension with negative days


@P02 @medium
Scenario: Cutoff Extension - P02-016 - Cutoff extension for prospect not in nurture


@P02 @medium
Scenario: Marking Ready - P02-017 - Prospect marked ready transitions to conversion queue


@P02 @medium
Scenario: Marking Ready - P02-018 - Mark ready for prospect already ready (idempotent)


@P02 @medium
Scenario: Marking Ready - P02-019 - Mark ready for prospect not in nurture


@P02 @medium
Scenario: Cold-Drop Scheduler - P02-020 - Cold-drop fires for prospect 14 days in nurture (no extension)


@P02 @medium
Scenario: Cold-Drop Scheduler - P02-021 - Cold-drop does NOT fire if within 14 days


@P02 @medium
Scenario: Cold-Drop Scheduler - P02-022 - Cold-drop does NOT fire if extension granted


@P02 @medium
Scenario: Cold-Drop Scheduler - P02-023 - Cold-drop scheduler batch processes multiple prospects


@P02 @medium
Scenario: Cold-Drop Scheduler - P02-024 - Cold-drop fires at correct scheduled time (02:00 EAT)


@P02 @medium
Scenario: Cold-Drop Scheduler - P02-025 - Cold-drop scheduler handles execution failure gracefully

