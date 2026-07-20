Feature: 706
  706 feature scenarios

@706 @medium
Scenario: KYC Gate Evaluation - Soft Gate - P03-006 - Soft gate flags attached to customer record
    Given Gate evaluation returned soft_gates_unresolved: ['driving_licence']. Customer.create command submitted with national_id=KE123456789, phone=+254712345678, email=user@example.
    Then Registration completes. customer_created_facts created.
