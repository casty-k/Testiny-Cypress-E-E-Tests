Feature: 643
  643 feature scenarios

@643 @1
Scenario: Prospect Capture-P01-001 - Online capture happy path (Kenya)
    Given Given an authenticated associate with role customer_ops.acquisition.associate
    And the associate is in Kenya (market context)
    And the prospect capture screen is open
    And the policy engine is loaded with signed-off KE scoring rubric
