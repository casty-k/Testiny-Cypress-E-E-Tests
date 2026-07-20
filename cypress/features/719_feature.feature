Feature: 719
  719 feature scenarios

@719 @medium
Scenario: Registration - De-Dupe - P04-006 - Second de-dupe collision on all three (national_id + phone + email)
    Given Existing customer with KE123456789, +254712345678, . New registration with identical values.
    Then Submit to customer.create. Collision detected with matched_on=['national_id', 'phone', 'email'].
