Feature: 506
  506 feature scenarios

@506 @1
Scenario: Unassign Role:Admin cannot unassign the last role from a user without confirmation
    Given Given a user has only one role assigned
    Then When I select "Unassign" on that role Then a warning is shown: "This will remove the user's only role. They will lose all access."
And I must confirm before the change is saved
