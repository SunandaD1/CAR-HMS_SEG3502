# CU-01
Feature: Browse available hikes
  A visitor or a registered user browses open and full hikes (full hikes accept waiting list registrations).

  Scenario: Open hikes exist
    Given there are open hikes in the system
    When a visitor browses available hikes
    Then the system displays the open hikes sorted by date
    And each hike shows its trail, difficulty, organizer and remaining places

  Scenario: A full hike is still listed so hikers can join the waiting list
    Given a hike is full and its registration deadline has not passed
    When a visitor browses available hikes
    Then the hike is displayed with 0 remaining places

  Scenario: Closed and cancelled hikes are not listed
    Given a hike is closed and another hike is cancelled
    When a visitor browses available hikes
    Then neither hike is displayed

  Scenario: Search by trail name, date or difficulty
    Given there are open hikes on several trails, dates and difficulties
    When a visitor searches by difficulty "MODERATE"
    Then only hikes with difficulty "MODERATE" are displayed

  Scenario: Signed-in hiker sees hikes matching their skill level
    Given an authenticated hiker with skill level "INTERMEDIATE"
    When the hiker browses available hikes
    Then the hikes matching the hiker skill level are highlighted

  Scenario: No open hikes exist
    Given there are no open hikes
    When a visitor browses available hikes
    Then the system displays an empty list
