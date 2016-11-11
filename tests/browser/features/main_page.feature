@firefox
Feature: Main page

  Scenario: There is "Log in" link at the main page
    Given I am at the main page
    Then "Log in" link should be there
