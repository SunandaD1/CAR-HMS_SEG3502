# CU-08 (commande : mise à jour du profil par le randonneur)
Feature: Update a hiker profile

  Scenario: Hiker updates personal information
    Given an authenticated hiker
    When the hiker submits a new phone number and address
    Then the hiker information is updated

  Scenario: Invalid information
    Given an authenticated hiker
    When the hiker submits an invalid phone number
    Then the update is rejected
    And the hiker information is unchanged

  Scenario: Hiker cannot change the email address
    Given an authenticated hiker
    When the hiker attempts to change the email address
    Then the update is rejected

  Scenario: Hiker cannot update another hiker
    Given an authenticated hiker
    When the hiker attempts to update a different hiker
    Then the update is rejected

  Scenario: Unauthenticated user
    Given an unauthenticated user
    When the user attempts to update a hiker
    Then the update is rejected
