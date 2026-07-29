Feature: 865
  865 feature scenarios

@865 @medium
Scenario: An unpaid hold releases automatically at end of day
    Then The vehicle is released back into the pool for other customers, and the customer is routed to Re-acquisition.
