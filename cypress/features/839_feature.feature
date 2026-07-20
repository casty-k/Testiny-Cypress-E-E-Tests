Feature: 839
  839 feature scenarios

@839 @medium
Scenario: End-to-End:Account activation with temporary password
    Given Newly created user exists
    Then Login using temporary password Activation completed and normal authentication succeeds Change password Login again
