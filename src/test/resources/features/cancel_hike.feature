//CU-03


Feature: Cancel a hike

  Scenario: Successfully cancel a hike
    Given an existing hike has not started
    And an authorized organizer is authenticated
    When the organizer cancels the hike with a reason
    Then the hike status becomes "CANCELLED"
    And all confirmed registrations are cancelled
    And all waitlisted registrations are cancelled
    And registered hikers are notified by email
    And the cancellation reason is included

  Scenario: Hike already started
    Given a hike has already started
    When an authorized user attempts to cancel it
    Then the cancellation is rejected

  Scenario: Hike already cancelled
    Given a hike is already cancelled
    When an authorized user attempts to cancel it
    Then the system rejects the duplicate cancellation

  Scenario: User is not authorized
    Given an unauthenticated user
    When the user attempts to cancel a hike
    Then the cancellation is rejected

  Scenario: Cancellation without a reason
    Given an authorized organizer is authenticated
    And an existing hike has not started
    When the organizer attempts to cancel without a reason
    Then the cancellation is rejected
