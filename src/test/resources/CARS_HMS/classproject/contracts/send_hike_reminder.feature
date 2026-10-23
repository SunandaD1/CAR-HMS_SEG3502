# CU-11
Feature: Send hike reminders

  Scenario: Reminder without weather warning
    Given a hike starts tomorrow and is not cancelled
    And the hike has confirmed registrations
    And the forecast at the trailhead predicts no rain or snow
    When the system sends hike reminders
    Then each confirmed hiker receives an email with the date, start time, trail and starting point
    And the email contains no weather warning

  Scenario: Reminder with weather warning
    Given a hike starts tomorrow and is not cancelled
    And the hike has confirmed registrations
    And the forecast at the trailhead predicts rain or snow
    When the system sends hike reminders
    Then each confirmed hiker receives a reminder that includes a weather warning

  Scenario: Weather service unavailable
    Given a hike starts tomorrow and is not cancelled
    And the hike has confirmed registrations
    And the weather service is unavailable
    When the system sends hike reminders
    Then each confirmed hiker receives a reminder without a weather warning

  Scenario: Waitlisted hikers do not receive reminders
    Given a hike starts tomorrow and is not cancelled
    And the hike has waitlisted registrations
    When the system sends hike reminders
    Then waitlisted hikers do not receive a reminder

  Scenario: Cancelled hike
    Given a hike starts tomorrow and is cancelled
    When the system sends hike reminders
    Then no reminder is sent

  Scenario: One email fails
    Given a hike starts tomorrow and is not cancelled
    And the email to one confirmed hiker fails
    When the system sends hike reminders
    Then the other confirmed hikers still receive their reminder
    And the failure is logged
