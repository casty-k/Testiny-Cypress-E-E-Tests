Feature: 602
  602 feature scenarios

@602 @medium
Scenario: Secure cookie enabled
    Given HTTPS environment active
    Then Authenticate user. Secure attribute present Inspect Set-Cookie header.
