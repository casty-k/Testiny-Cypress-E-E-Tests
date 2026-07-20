Feature: 527
  527 feature scenarios

@527 @medium
Scenario: Happy Path:JWT is signed with RS256 — not HS256
    Given Given a valid employee logs in successfully
    Then When the JWT header is decoded  Then the "alg" field is "RS256"   And the "typ" field is "JWT"
