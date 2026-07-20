Feature: 652
  652 feature scenarios

@652 @medium
Scenario: Offline Capture and sync- P01-010 - Offline sync with 3 valid, 1 phone collision, 1 phone+email collision
    Given Given a batch of 5 offline-captured prospects:
    | Prospect | Phone          | Email              | Name      |
    | 1        | +254712111111  | new1@example.com   | NewProsp1 |
    | 2        | +254712222222  | new2@example.com   | NewProsp2 |
    | 3        | +254712333333  | new3@example.com   | NewProsp3 |
    | 4        | +254712111111  | existing@example.com| Collision1|
    | 5        | +254712999999  | exist_email@ex.com | Collision2|
 And prospect with +254712111111 and existing@example.com already exists in DB
 And prospect with +254712999999 and exist_email@ex.com already exists in DB
