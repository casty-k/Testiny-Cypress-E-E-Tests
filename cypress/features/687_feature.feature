Feature: 687
  687 feature scenarios

@687 @medium
Scenario: Cutoff Extension - P02-012 - Cutoff extended by 7 days
    Given A prospect in nurture with prospect_id=p-123, nurture_entry_at=2026-07-07 10:00, status=in_nurture.
    Then Associate extends nurture with prospect_id=p-123, extension_days=7. nurture_entry_at reset to NOW() (2026-07-14). Submit to POST /api/v1/commands/prospect/extend_nurture. nurture_extended_facts record created.
