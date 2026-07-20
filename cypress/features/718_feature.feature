Feature: 718
  718 feature scenarios

@718 @medium
Scenario: Registration - De-Dupe - P04-005 - Second de-dupe collision on national_id + phone
    Given Existing customer: national_id=KE123456789, phone=+254712345678. New registration with same values.
    Then Submit to customer.create. Response shows existing_customer_id and matched_on=['national_id', 'phone'].
