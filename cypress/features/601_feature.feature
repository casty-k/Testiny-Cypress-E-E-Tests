Feature: 601
  601 feature scenarios

@601 @medium
Scenario: HTTPS enforced
    Given HTTPS configured
    Then Attempt HTTP request. Client redirected or rejected according to policy
