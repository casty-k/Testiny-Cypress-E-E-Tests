Feature: 863
  863 feature scenarios

@863 @medium
Scenario: Selecting a vehicle places a same-day hold and locks it from everyone else
    Then That vehicle is immediately removed from every other customer's list of options for the rest of that day — only one customer can ever hold a given vehicle at a time.
