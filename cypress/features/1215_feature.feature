Feature: 1215
  1215 feature scenarios

@1215 @medium
Scenario: Earlier timestamp preserved regardless of which side is canonical
    Then Consolidated (canonical) ticket's createdAt/slaClockStartedAt must still reflect A's earlier timestamp — not B's own original timestamp
