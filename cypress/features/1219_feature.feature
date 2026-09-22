Feature: 1219
  1219 feature scenarios

@1219 @medium
Scenario: Close blocked with zero contact attempts
    Then API returns 422 Unprocessable Entity; status remains unchanged in the database
