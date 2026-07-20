Feature: 720
  720 feature scenarios

@720 @medium
Scenario: Registration - De-Dupe - P04-007 - De-dupe collision at registration shows UI error screen
    Given Registration form submitted with collision national_id. HTTP 409 returned.
    Then Process HTTP 409 response. Collision resolution screen displayed.
