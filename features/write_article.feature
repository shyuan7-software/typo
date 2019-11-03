Feature: create category
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit a category
    Given I am on the new categories page
    When I fill in "category_name" with "cName"
    And I fill in "category_keywords" with "cKeyword"
    And I fill in "category_permalink" with "TAMU"
    And I fill in "category_description" with "University"
    And I press "Save"
    Then I should see "cName"
    Then I should see "cKeyword"
    Then I should see "TAMU"
    Then I should see "University"
    Then I follow "cName"
    When I fill in "category_name" with "cNewName"
    And I fill in "category_keywords" with "cNewKeyword"
    And I fill in "category_permalink" with "NewTAMU"
    And I fill in "category_description" with "NewUniversity"
    And I press "Save"
    Then I should see "cNewName"
    Then I should see "cNewKeyword"
    Then I should see "NewTAMU"
    Then I should see "NewUniversity"
