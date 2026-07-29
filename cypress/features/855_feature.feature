Feature: 855
  855 feature scenarios

@855 @medium
Scenario: Fraud or an unresolvable identity issue — hard failure
    Then The customer is routed to Re-acquisition, their Draft Contract is voided, and a compliance flag is raised — this case does not go to Document Support.
