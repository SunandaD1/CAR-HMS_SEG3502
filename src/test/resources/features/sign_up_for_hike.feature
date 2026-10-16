//CU-05


Feature: Sign up for a hike

  Scenario: Successful registration
    Given an authenticated hiker has an active membership
    And the hike accepts registrations
    And the hike difficulty is within one level above the hiker skill
    And the hike has available places
    When the hiker signs up for the hike
    Then the registration status is "CONFIRMED"
    And the hiker receives a confirmation email

  Scenario: Hike is full
    Given an eligible authenticated hiker
    And the hike is full
    And the registration deadline has not passed
    When the hiker signs up for the hike
    Then the registration status is "WAITLISTED"
    And the hiker receives their waiting list position by email

  Scenario: Membership is inactive
    Given an authenticated hiker has an inactive membership
    When the hiker attempts to sign up
    Then the registration is rejected

  Scenario: Hiker skill level is insufficient
    Given an authenticated hiker has an active membership
    And the hike difficulty exceeds the permitted skill level
    When the hiker attempts to sign up
    Then the registration is rejected

  Scenario: Hike registration is closed
    Given a hike has status "CLOSED"
    When a hiker attempts to sign up
    Then the registration is rejected

  Scenario: Duplicate registration
    Given a hiker already has an active registration for a hike
    When the hiker attempts to register again
    Then the registration is rejected
