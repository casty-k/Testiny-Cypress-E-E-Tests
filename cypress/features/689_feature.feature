Feature: 689
  689 feature scenarios

@689 @medium
Scenario: Cutoff Extension - P02-014 - Cutoff extension with 0 days (invalid)
    Given An extension request with extension_days=0.
    Then Submit extension request with 0 days. HTTP 400 returned.
