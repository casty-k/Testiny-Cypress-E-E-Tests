Feature: Prospect Capture
  P01 feature scenarios

@P01 @1
Scenario: Prospect Capture-P01-001 - Online capture happy path (Kenya)


@P01 @medium
Scenario: Prospect Capture:P01-002 - Online capture happy path (Uganda)


@P01 @medium
Scenario: Prospect Capture-P01-003 - Online capture happy path (Ghana)


@P01 @medium
Scenario: Prospect Capture-P01-004 - Online capture with partial scoring inputs


@P01 @medium
Scenario: Prospect Caprure- P01-005 - Online capture returns error for invalid phone format


@P01 @medium
Scenario: Prospect Capture-P01-006 - Online capture returns error for missing required fields


@P01 @medium
Scenario: Project Capture-P01-007 - Online capture returns error for invalid email format


@P01 @medium
Scenario: Prospect Capture- P01-008 - Online capture with XSS attempt in full_name field


@P01 @medium
Scenario: Offline Capture and Sync-P01-009 - Offline capture batch sync (5 prospects, all valid, no collisions)


@P01 @medium
Scenario: Offline Capture and sync- P01-010 - Offline sync with 3 valid, 1 phone collision, 1 phone+email collision


@P01 @medium
Scenario: Offline Capture &Sync -P01-011 - Offline sync with empty batch


@P01 @medium
Scenario: Offline Capture&Sync- P01-012 - Offline sync with malformed JSON


@P01 @medium
Scenario: De-Duplication at Capture- P01-013 - De-dupe phone collision at online capture (Kenya)


@P01 @medium
Scenario: De-Duplication-P01-014 - De-dupe phone collision at offline sync (Kenya)


@P01 @medium
Scenario: De-Duplication-P01-015 - De-dupe is market-scoped (no cross-market false positive)


@P01 @medium
Scenario: De-Duplication-P01-016 - De-dupe collision with partial name match (no collision)


@P01 @medium
Scenario: De-Duplication at Sync-P01-017 - Phone+email collision at offline sync


@P01 @medium
Scenario: De-Duplication-P01-018 - Phone+email collision with different names


@P01 @medium
Scenario: De-Duplication-P01-019 - Email collision without phone collision (not a collision)


@P01 @medium
Scenario: Referral Attribution-P01-020 - Referral with valid, active driver   Given a driver with id "drv-001" who is active in the system


@P01 @medium
Scenario: Referral Attribution-P01-021 - Referral with inactive driver (prospect still created)


@P01 @medium
Scenario: Referral Attribution-P01-022 - Referral with non-existent driver   Given a referral_driver_id "drv-999" that does not exist


@P01 @medium
Scenario: Referral Attribution -P01-023 - Referral with empty/null driver id (optional field)


@P01 @medium
Scenario: Scoring and Score Bands-P01-024 - Score band HOT (≥7) routes to conversion


@P01 @medium
Scenario: Scoring and Score Bands-P01-025 - Score band WARM (4-6) routes to nurture


@P01 @medium
Scenario: Scoring and Score Bands-P01-026 - Score band COLD (<4) routes to nurture


@P01 @1
Scenario: Scorinkg and Score Bands-P01-027 - Score band boundary: score exactly 7 (hot boundary)


@P01 @medium
Scenario: Scoring and Score Bands-P01-028 - Score band boundary: score exactly 4 (warm lower boundary)


@P01 @medium
Scenario: Scoring and Score Bands-P01-029 - Score band boundary: score exactly 6 (warm upper boundary)


@P01 @medium
Scenario: Scoring and Score Bands-P01-030 - Score band boundary: score 3.9 (cold)


@P01 @medium
Scenario: Scoring and Score Bands- P01-031 - Scoring service returns error (service unavailable)


@P01 @medium
Scenario: Scoring and Score Bands-P01-032 - Policy rubric weights NOT hard-coded   


@P01 @medium
Scenario: Scoring and Scoring Bands- P01-033 - rule_version stamped on prospect_captured_fact

