Feature: 827
  827 feature scenarios

@827 @medium
Scenario: Business Rule:Temporary password expires after 48 hours
    Given Temporary password older than 48 hours
    Then Attempt password change using expired temporary password Password change rejected due to expired temporary password
