# CU-07
Feature: Register a hiker

  Scenario: Successful registration of an adult member
    Given a visitor has a valid invitation code
    And the email address is not already registered
    And the visitor is 18 years old or older
    When the visitor submits complete hiker information and accepts the waiver
    Then a hiker is created with the membership status "ACTIVE"
    And the hiker skill level is recorded
    And the hiker can sign up for hikes

  Scenario: Successful registration of a minor with a legal guardian
    Given a visitor has a valid invitation code
    And the visitor is younger than 18 years old
    When the visitor submits complete hiker information and the waiver is accepted by a legal guardian named "Guardian Name"
    Then a hiker is created with the membership status "ACTIVE"
    And the guardian name is recorded with the waiver

  Scenario: Minor without a legal guardian
    Given a visitor has a valid invitation code
    And the visitor is younger than 18 years old
    When the visitor submits the information without a legal guardian name
    Then the registration is rejected

  Scenario: Invalid invitation code
    Given a visitor has an unknown or already used invitation code
    When the visitor submits the registration
    Then the registration is rejected

  Scenario: Email already registered
    Given a hiker already exists with the same email address
    When the visitor submits the registration
    Then the registration is rejected

  Scenario: Incomplete information
    Given a visitor has a valid invitation code
    When the visitor submits the registration without an emergency contact
    Then the registration is rejected

  Scenario: Waiver not accepted
    Given a visitor has a valid invitation code
    When the visitor submits complete information without accepting the waiver
    Then the registration is rejected
