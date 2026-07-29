Feature: Registration
  P04 feature scenarios

@P04 @medium
Scenario: Registration - P04-001 - Registration success (prospect to customer, onboarding status)


@P04 @medium
Scenario: Registration - P04-002 - Registration with soft-gap flags attached to customer


@P04 @medium
Scenario: Registration - P04-003 - Registration with proceed_with_flags


@P04 @medium
Scenario: Registration - De-Dupe - P04-004 - Second de-dupe collision on national_id


@P04 @medium
Scenario: Registration - De-Dupe - P04-005 - Second de-dupe collision on national_id + phone


@P04 @medium
Scenario: Registration - De-Dupe - P04-006 - Second de-dupe collision on all three (national_id + phone + email)


@P04 @medium
Scenario: Registration - De-Dupe - P04-007 - De-dupe collision at registration shows UI error screen


@P04 @medium
Scenario: Registration - De-Dupe - P04-008 - No collision: different national_id but same phone (allowed)


@P04 @medium
Scenario: Registration - Contract & Vehicle Type - P04-009 - Contract type and vehicle type persisted as preferences


@P04 @medium
Scenario: Registration - Contract & Vehicle Type - P04-010 - Registration succeeds if contract_type omitted (not hard gate)


@P04 @medium
Scenario: Registration - Contract & Vehicle Type - P04-011 - Registration succeeds if vehicle_type omitted (not hard gate)


@P04 @medium
Scenario: Registration - Contract & Vehicle Type - P04-012 - Invalid contract_type value


@P04 @medium
Scenario: Registration - Contract & Vehicle Type - P04-013 - Contract and vehicle type preferences available for Process 05


@P04 @medium
Scenario: Registration - Validation - P04-014 - Registration fails if national_id is missing (required field)


@P04 @medium
Scenario: Registration - Validation - P04-015 - Registration fails if phone is missing (pre-filled, required)


@P04 @medium
Scenario: Registration - Validation - P04-016 - Registration fails if email is missing (pre-filled, required)


@P04 @medium
Scenario: Registration - Validation - P04-017 - Registration with invalid national_id format


@P04 @medium
Scenario: Registration - Validation - P04-018 - Registration form in offline mode (queued for sync)


@P04 @medium
Scenario: Registration - Idempotency - P04-019 - Idempotency: resubmit same registration (same national_id)


@P04 @medium
Scenario: Registration - Events - P04-020 - gw.customer.created event published after registration


@P04 @medium
Scenario: Registration - Events - P04-021 - Event replay (idempotency in consumers)

