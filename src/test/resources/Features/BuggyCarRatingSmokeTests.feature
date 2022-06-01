#Author: projectg29
Feature: Automation of Buggy Cars smoke testing happy path scenarios

  Background: Given I am in the Buggy Cars Ratting web application

  Scenario: Top5 critical functionalities of BuggyCar application
    Given User lanches the application url
    Then Verify user is able to complete the registration
    Then Verify user is able to login to the application
    Then Verify user is able to verify the profile section
    Then Verify user is able to vote for a particular car model
    Then Verify the voters comment in the gridbox
    Then click on the facebook icon and verify the new tab opened and return back

  #below are actual tests will implement.
  Scenario Outline: User Registeration
    Given I click to Register button in the Dashboardpage
    And I enter new username,<firstname>, ,<lastname>,<password>,<confirmpassword>
    Then I click on Register button
    And I verify the registration successfull message

    Examples: 
      | firstname | lastname | password  | confirmpassword |
      | James     | Bond     | Buggy@123 | Buggy@123       |
      | Peter     | Parker   | Buggy@123 | Buggy@123       |

  Scenario Outline: User Logging
    Given I enter username and <password>
    When I click on Login button
    Then I verify the login successfull

    Examples: 
      | password  |
      | Buggy@123 |
      | Buggy@123 |

  Scenario Outline: User profile udpate and verify
    Given I enter username and <password>
    And I click on Login button
    Then I click on Profile button
    And I should see the profile detail page
    And I enter <age>, <address>,<phone>
    When I click save button
    And I sholud see The profile has been saved successful message

    Examples: 
      | password  | age | address    | phone     |
      | Buggy@123 |  35 | Mt roskill | 043244543 |
      | Buggy@123 |  25 | Mt Albert  | 343434344 |

  Scenario: Buggy car rating - Vote for a particular car model
    Given I click on Overall Rating
    And I clcik on Lamborghini	Diablo model car image
    Then I enter my comments and I click vote button
    And I verify vote number is increased

  Scenario: Buggy car rating - facebook icon verification
    Given I click on facebook icon
    And I should see the new browser open and close
