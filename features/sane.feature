Feature: Sanity
  In order to succeed
  As a developer
  I want to reassure everything is working

  Scenario:
    Given I have installed the Cucumber gem
    When I run which cucumber
    Then I should see the commands path

