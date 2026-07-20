Feature: 721
  721 feature scenarios

@721 @medium
Scenario: Registration - De-Dupe - P04-008 - No collision: different national_id but same phone (allowed)
    Given Existing customer: KE111111111, +254712345678. New registration with: KE222222222, +254712345678.
    Then Submit to customer.create. Collision NOT detected.
