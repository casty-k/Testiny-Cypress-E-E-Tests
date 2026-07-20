Feature: 605
  605 feature scenarios

@605 @1
Scenario: Zero downtime deployment
    Given Rolling deployment configured
    Then Deploy new version while traffic continues. No dropped requests observed
