Feature: 686
  686 feature scenarios

@686 @medium
Scenario: Touchpoint Logging - P02-011 - Touchpoint with non-existent prospect_id
    Given A prospect_id 'p-999' that does not exist.
    Then Submit touchpoint for non-existent prospect_id. HTTP 404 Not Found returned.
