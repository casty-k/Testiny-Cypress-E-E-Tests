Feature: 850
  850 feature scenarios

@850 @medium
Scenario: Re-entered cases leave the active queue without disappearing from history
    Then It is marked re-entered and removed from the active queue, not deleted.
