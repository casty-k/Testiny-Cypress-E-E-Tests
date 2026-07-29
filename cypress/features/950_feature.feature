Feature: 950
  950 feature scenarios

@950 @medium
Scenario: Void event is audited
    Then Audit entry records actor timestamp reason and action = Void
