Feature: 642
  642 feature scenarios

@642 @medium
Scenario: Production deployment on ECS Fargate
    Given Prod ECS Fargate infrastructure available
    Then Deploy the Router to ECS Fargate. Router runs on ECS Fargate with health checks passing and requests authenticated Verify task health and an authenticated request.
