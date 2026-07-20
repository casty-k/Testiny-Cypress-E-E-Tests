Feature: 739
  739 feature scenarios

@739 @medium
Scenario: Cross-Cutting - rule_version - CC-005 - Policy version affects scoring
    Given Policy v3: {education weight: 2, income weight: 3}. Policy v4: {education weight: 3, income weight: 2}. Two prospects captured (one with v3, one with v4) with identical scoring inputs.
    Then Capture first prospect with v3. First prospect score=X, rule_version=3. Capture second prospect with v4. Second prospect score=Y, rule_version=4.
