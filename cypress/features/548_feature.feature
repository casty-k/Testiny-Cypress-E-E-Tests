Feature: 548
  548 feature scenarios

@548 @1
Scenario: Employee Deactivation:Deactivation of an already-inactive employee is idempotent
    Given Given an employee is already marked inactive in identity.user_facts
