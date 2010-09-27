Feature: Create account

  Background:
    Given there are no registered users

  Scenario Outline: Create a brand new account
    Given I have clicked on the "create an account" link
    And I have entered a username "<name>"
    When I press "Create My Account"
    Then I should see the text "<message>"
    And I should see a "Log Out" button
    
    Examples: 
      | name  | message     |
      | matt  | Hello matt  |
      | matt$ | Hello matt$ |

  @slow
  Scenario: Try to create an existing account
    Given there is already a user "matt"
    And I have clicked on the "create an account" link
    And I have entered a username "matt"
    When I press "Create My Account"
    And I should see an error
