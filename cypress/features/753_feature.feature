Feature: 753
  753 feature scenarios

@753 @medium
Scenario: Cross-Cutting - Events - CC-019 - gw.customer.created event published
    Given Customer.create completes. Customer_created_facts written.
    Then Publish customer event. gw.customer.created emitted to outbox.
