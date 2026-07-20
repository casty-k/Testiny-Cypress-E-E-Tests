Feature: 616
  616 feature scenarios

@616 @2
Scenario: Health endpoint accessible without authentication
    Given Router running
    Then Access health endpoint anonymously. Health endpoint accessible according to configuration
