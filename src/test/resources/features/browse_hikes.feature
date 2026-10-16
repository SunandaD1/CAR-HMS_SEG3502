CU-01

Feature: Browse available hikes

  Scenario: Open hikes exist
    Given there are open hikes in the system
    When a visitor browses available hikes
    Then the system displays the open hikes

  Scenario: No open hikes exist
    Given there are no open hikes
    When a visitor browses available hikes
    Then the system displays an empty list
