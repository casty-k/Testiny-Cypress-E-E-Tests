Feature: 702
  702 feature scenarios

@702 @medium
Scenario: KYC Gate Evaluation - Hard Gate - P03-002 - Hard gate block prevents customer record creation
    Given Evaluation returns decision='blocked'. Associate attempts to fill registration form.
    Then Associate fills form and submits. Gate decision validated first. POST /api/v1/commands/customer/create is called. HTTP 422 Unprocessable returned.
