Feature: 823
  823 feature scenarios

@823 @medium
Scenario: Security:Unknown phone returns HTTP 202
    Given Unknown phone
    Then Submit forgot password request HTTP 202 returned without revealing account existence
