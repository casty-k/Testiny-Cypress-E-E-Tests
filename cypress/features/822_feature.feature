Feature: 822
  822 feature scenarios

@822 @medium
Scenario: Security:Unknown email returns HTTP 202
    Given Unknown email
    Then Submit forgot password request HTTP 202 returned without revealing account existence
