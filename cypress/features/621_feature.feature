Feature: 621
  621 feature scenarios

@621 @1
Scenario: Container restarts preserve functionality
    Given Docker restart policy configured
    Then Restart Router container. Router restarts successfully and authenticates requests normally Execute authenticated request.
