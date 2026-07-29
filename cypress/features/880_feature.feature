Feature: 880
  880 feature scenarios

@880 @medium
Scenario: Pipeline view renders track and aging state
    Then Each row shows name, phone, score band, track badge (marketing/service/fast-track), reason (blocker or complete-info), days until aging cutoff (colour-coded), and last touchpoint channel + date, filterable by track and remaining days.
