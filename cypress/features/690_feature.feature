Feature: 690
  690 feature scenarios

@690 @medium
Scenario: Cutoff Extension - P02-015 - Cutoff extension with negative days
    Given An extension request with extension_days=-5.
    Then Submit extension with negative value. HTTP 400 returned.
