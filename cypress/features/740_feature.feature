Feature: 740
  740 feature scenarios

@740 @medium
Scenario: Cross-Cutting - Market-Scoped - CC-006 - De-dupe phone in KE does not block same phone in UG
    Given Prospect with phone=+254712345678 in market KE. New prospect with same phone=+254712345678 in market UG.
    Then Submit new prospect in UG. Collision NOT detected.
