Feature: 575
  575 feature scenarios

@575 @medium
Scenario: Reject forged signing key
    Given JWT signed with unknown private key
    Then Send forged JWT. HTTP 401 returned
