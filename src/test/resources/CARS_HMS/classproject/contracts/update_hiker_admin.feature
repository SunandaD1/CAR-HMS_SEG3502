# CU-08 (commande : mise à jour par un administrateur)
Feature: Update a hiker membership and organizer certification

  Scenario: Administrator changes the membership status
    Given an authenticated administrator
    When the administrator sets the membership status of a hiker to "SUSPENDED"
    Then the membership status of the hiker is "SUSPENDED"

  Scenario: Administrator records a hiking leader certification
    Given an authenticated administrator
    When the administrator records a certificate number, issue date, expiry date and organizer level for a hiker
    Then the hiker becomes a hiking organizer
    And the certification and organizer level are recorded

  Scenario: Certification expires before it is issued
    Given an authenticated administrator
    When the administrator records an expiry date earlier than the issue date
    Then the update is rejected

  Scenario: A hiker cannot change their own membership or certification
    Given an authenticated hiker who is not an administrator
    When the hiker attempts to change their membership status
    Then the update is rejected

  Scenario: Unknown hiker
    Given an authenticated administrator
    When the administrator updates a hiker that does not exist
    Then the update is rejected
