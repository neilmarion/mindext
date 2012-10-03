Feature: User creates compositions
  Scenario: User creates a composition
    Given I go to the compositions page
    And I fill in "Content" with "My Globe number: +63-916-475-4261"
    When I press "Save"
    Then I should see "My Globe number: +63-916-475-4261" added in the compositions page
