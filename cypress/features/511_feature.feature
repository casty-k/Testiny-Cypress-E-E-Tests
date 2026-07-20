Feature: 511
  511 feature scenarios

@511 @1
Scenario: Access Control:Non-Admin cannot call role assignment mutation 
    Given Given I am logged in as "finance_ops.manager"
    Then When I call the assignRole GraphQL mutation directly Then the response contains a FORBIDDEN error  And data.assignRole is null  And a command_rejected_fact is written
