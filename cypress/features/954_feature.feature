Feature: 954
  954 feature scenarios

@954 @medium
Scenario: Offline capture with zero connectivity is created and queued locally
    Then Capture is created and queued locally on the device without error, retrievable/editable before sync
