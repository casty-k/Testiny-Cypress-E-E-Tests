Feature: 949
  949 feature scenarios

@949 @medium
Scenario: Voided prospect is excluded from active pipeline
    Then Voided prospect does not appear in active lists but remains retrievable via direct lookup
