Feature: 594
  594 feature scenarios

@594 @1
Scenario: Restrict CORS disallowed origin
    Given CORS configured
    Then Send browser preflight from unauthorized origin. No Access-Control-Allow-Origin header returned
