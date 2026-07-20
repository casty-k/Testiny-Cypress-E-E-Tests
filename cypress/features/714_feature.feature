Feature: 714
  714 feature scenarios

@714 @medium
Scenario: Registration - P04-001 - Registration success (prospect to customer, onboarding status)
    Given A prospect with status=ready, prospect_id=p-123. Gate evaluation returned decision=proceed_clean. Registration form filled with national_id=KE123456789, phone=+254712345678, email=, contract_type=LTO, vehicle_type=new_arc.
    Then Associate submits to POST /api/v1/commands/customer/create. customer_created_facts created.
