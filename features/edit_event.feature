Feature: Edit Event
  Events need to be editable
  
  Scenario: Event exists
    Given a saved event starts on "1 June 2012 at 9am"
    When I edit that event
    Then the "date" should be "2012-06-01"
    And the "time" should be "09:00AM"

    

