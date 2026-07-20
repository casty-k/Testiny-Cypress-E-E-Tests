Feature: 733
  733 feature scenarios

@733 @medium
Scenario: Registration - Events - P04-020 - gw.customer.created event published after registration
    Given Registration completed successfully. Customer_created_facts written.
    Then System executes post-registration events. gw.customer.created emitted.
