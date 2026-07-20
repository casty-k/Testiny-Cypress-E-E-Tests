Feature: 682
  682 feature scenarios

@682 @medium
Scenario: Touchpoint Logging - P02-007 - Touchpoint logged: Email
    Given A prospect in nurture.
    Then Submit touchpoint with channel=email, notes='Sent follow-up email', outcome='opened'. Email touchpoint properly recorded.
