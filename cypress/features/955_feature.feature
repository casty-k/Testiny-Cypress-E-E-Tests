Feature: 955
  955 feature scenarios

@955 @medium
Scenario: Queued offline capture syncs once connectivity returns
    Then Queued capture syncs successfully to the backend and is no longer shown as pending-sync on the device
