# CU-02
Feature: Create a hike

  Scenario: Successfully create a hike
    Given an authenticated hiking organizer
    And the organizer has a valid certification
    And the organizer level meets the trail difficulty
    And the trail permits hiking
    And the hike date is within the trail opening season
    And the registration deadline is valid
    When the organizer creates a hike with valid information
    Then the system assigns a unique hike ID
    And the hike status is "OPEN"

  Scenario: Trail is closed during the selected date
    Given an authenticated hiking organizer
    And the trail is outside its opening season
    When the organizer attempts to create a hike
    Then the creation is rejected

  Scenario: Invalid registration deadline
    Given an authenticated hiking organizer
    And the registration deadline is more than 14 days before the hike
    When the organizer attempts to create a hike
    Then the creation is rejected

  Scenario: Organizer certification is expired
    Given an authenticated hiking organizer
    And the organizer certification is invalid on the hike date
    When the organizer attempts to create a hike
    Then the creation is rejected

  Scenario: Organizer level is insufficient
    Given an authenticated hiking organizer
    And the organizer level is below the trail difficulty
    When the organizer attempts to create a hike
    Then the creation is rejected

  Scenario: Trail is not hikeable
    Given an authenticated hiking organizer
    And the trail does not permit hiking
    When the organizer attempts to create a hike
    Then the creation is rejected

  Scenario: Trail data service is unavailable
    Given an authenticated hiking organizer
    And the NCC trail service is unavailable
    And the trail exists in the last synchronized trail data
    When the organizer creates a hike with valid information
    Then the hike is created using the last synchronized trail data

  Scenario: Unauthenticated user
    Given an unauthenticated user
    When the user attempts to create a hike
    Then the creation is rejected
