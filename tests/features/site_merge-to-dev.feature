Feature: Merging into dev from an environment
  In order to work collaboratively
  As a user
  I need to be able to merge into the dev environment.

  Background: I am authenticated and I have a site named [[test_site_name]]
    Given I am authenticated
    And a site named "[[test_site_name]]"

  @vcr site_merge-to-dev
  Scenario: Merge a multidev to dev environment
    When I run "terminus site merge-to-dev --site=[[test_site_name]] --env=multidev"
    Then I should get: "."
    Then I should get:
    """
    Merged the multidev environment into dev
    """
