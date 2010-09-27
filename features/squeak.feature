Feature: Squeak
  In order to share my opinions with the world
  As a user of squeaker
  I want to be able to post a message to my followers
    
  Scenario: I send a squeak on a clean system
    Given I am on the squeaker webpage
    And there are currently no message in the system
    And there is a registered user "dave"
    And I am logged in as "dave"
    When I enter the text "hello" into the squeak box
    And I press the "Squeak" button
    Then the text "hello" is displayed on the page
    
  Scenario: One of my followers sees my squeak
