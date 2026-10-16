//CU-06


Feature: Cancel a hike registration

  Scenario: Cancel confirmed registration with waiting list
    Given a hiker has a confirmed registration
    And the registration deadline has not passed
    And another hiker is first on the waiting list
    When the hiker cancels the registration
    Then the registration status becomes "CANCELLED"
    And the first waitlisted hiker is confirmed
    And the promoted hiker is notified by email

  Scenario: Cancel confirmed registration without waiting list
    Given a hiker has a confirmed registration
    And the registration deadline has not passed
    And the waiting list is empty
    When the hiker cancels the registration
    Then the registration status becomes "CANCELLED"
    And the hike status becomes "OPEN"

  Scenario: Cancel waitlisted registration
    Given a hiker has a waitlisted registration
    And the registration deadline has not passed
    When the hiker cancels the registration
    Then the registration status becomes "CANCELLED"
    And the confirmed participant count remains unchanged

  Scenario: Registration deadline passed
    Given a hiker has a confirmed registration
    And the registration deadline has passed
    When the hiker attempts to cancel
    Then the cancellation is rejected

  Scenario: Registration already cancelled
    Given a hiker has an already cancelled registration
    When the hiker attempts to cancel it again
    Then the cancellation is rejected
