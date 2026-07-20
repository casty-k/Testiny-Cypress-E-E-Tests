Feature: 625
  625 feature scenarios

@625 @1
Scenario: Empty or absent roles claim handled
    Given Valid JWT with no roles claim
    Then Send authenticated request. Request succeeds and x-roles is empty or absent without error Inspect x-roles header.
