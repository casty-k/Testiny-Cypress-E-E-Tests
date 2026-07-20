Feature: 717
  717 feature scenarios

@717 @medium
Scenario: Registration - De-Dupe - P04-004 - Second de-dupe collision on national_id
    Given An existing customer with national_id=KE123456789 in KE market. New registration attempts with national_id=KE123456789, phone=+254712111111, email=, market=KE.
    Then Submit to customer.create. Check national_id uniqueness per market.
