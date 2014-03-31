Feature: Sanity
  In order to succeed
  As a developer
  I want to reassure everything is working

  Scenario:
    Given I have installed Cucumer
    When I run bundle exec cucumber
    Then I should see cucumber features running

