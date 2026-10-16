CU-04

Feature: Close a hike

  Scenario: Registration deadline reached
    Given a hike has reached its registration deadline
    And the hike is not cancelled
    When the system processes registration deadlines
    Then the hike status becomes "CLOSED"
    And new registrations are not accepted
    And registration cancellations are not accepted

  Scenario: Registration deadline not reached
    Given a hike registration deadline has not been reached
    When the system processes registration deadlines
    Then the hike is not closed

  Scenario: Hike already cancelled
    Given a hike is cancelled
    And its registration deadline has passed
    When the system processes registration deadlines
    Then the hike remains "CANCELLED"

  Scenario: Multiple hikes reach their deadlines
    Given multiple active hikes have reached their registration deadlines
    When the system processes registration deadlines
    Then all eligible hikes are closed
