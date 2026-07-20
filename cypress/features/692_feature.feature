Feature: 692
  692 feature scenarios

@692 @medium
Scenario: Marking Ready - P02-017 - Prospect marked ready transitions to conversion queue
    Given A prospect in nurture: prospect_id=p-123, status=in_nurture, stage_02_status=active.
    Then Associate marks prospect ready. gw.prospect.ready_for_conversion emitted. Submit to POST /api/v1/commands/prospect/mark_ready. prospect_projections.status='ready'.
