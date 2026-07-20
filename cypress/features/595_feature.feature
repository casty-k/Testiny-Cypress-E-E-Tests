Feature: 595
  595 feature scenarios

@595 @1
Scenario: Allow configured origin
    Given CORS configured
    Then Send browser preflight from allowed origin. Configured origin returned with Access-Control-Allow-Credentials true
