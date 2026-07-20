Feature: 662
  662 feature scenarios

@662 @medium
Scenario: Referral Attribution-P01-020 - Referral with valid, active driver   Given a driver with id "drv-001" who is active in the system
    Given When a capture request includes referral_driver_id: "drv-001"
