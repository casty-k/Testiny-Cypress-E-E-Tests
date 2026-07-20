Feature: 836
  836 feature scenarios

@836 @medium
Scenario: Response Validation:Required JWT claims present
    Given Valid authentication cookie
    Then Call GET /me Response contains sub, actor_id, context_id, roles, jti, iat, exp and must_change_password
