Feature: 626
  626 feature scenarios

@626 @1
Scenario: Roles array serialized correctly
    Given Valid JWT containing multiple roles
    Then Send authenticated request. All roles present in x-roles using the agreed delimiter with order preserved Inspect x-roles header format.
