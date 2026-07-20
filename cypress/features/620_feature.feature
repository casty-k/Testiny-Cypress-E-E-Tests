Feature: 620
  620 feature scenarios

@620 @2
Scenario: Staging deployment uses Docker on EC2
    Given Staging infrastructure available
    Then Deploy Router container to EC2 Docker host. Router operates successfully in Docker container on EC2 staging Verify service.
