#Author: projectg29
Feature: Automation of Buggy Cars smoke testing happy path scenarios

  Background: Given I am in the Buggy Cars Ratting web application

  Scenario: User Registration
    Given I click to Register button in the Dashboardpage
    And I enter new username Firstname, Lastname and password
    Then I click on Register button
    And I verify the registration successful message

  Scenario: User Logging
    Given I enter username and password
    When I click on Login button
    Then I verify the login successful

  Scenario: User profile verification
    Given I click on Profile button
    And I should see the profile detail page

  Scenario: Buggy car rating - Vote for a particular car model
    Given I click on Overall Rating
    And I click on Lamborghini	Diablo model car image
    Then I enter my comments and I click vote button
    And I verify vote number is increased

  Scenario: Buggy car rating - facebook icon verification
    Given I click on facebook icon
    And I should see the new browser open and close
