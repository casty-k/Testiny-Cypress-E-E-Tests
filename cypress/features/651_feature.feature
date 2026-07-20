Feature: 651
  651 feature scenarios

@651 @medium
Scenario: Offline Capture and Sync-P01-009 - Offline capture batch sync (5 prospects, all valid, no collisions)
    Given Given a batch of 5 offline-captured prospects:
    | Prospect | Phone          | Email              | Name    |
    | 1        | +254712111111  | p1@example.com     | Alice   |
    | 2        | +254712222222  | p2@example.com     | Bob     |
    | 3        | +254712333333  | p3@example.com     | Charlie |
    | 4        | +254712444444  | p4@example.com     | Diana   |
    | 5        | +254712555555  | p5@example.com     | Eve     |
And all records are in KE market
 And none of these phones exist in the database
