Feature: display restaurants on Restaurant page

  As a user interest in Chinatown restaurants
  So that I can quickly look at a list of restaurants in Chinatown
  I want to see the list of restaurants

Background: restaurants have been added to the database

  Given the following restaurants exist:
  | name                   | description |
  | Panda Express          | fast-food   |
  | PF Chang               | take-out    |

  And I am on the Restaurant
  Then 2 seed restaurants should exist

Scenario: navigate to restaurants page
  When I follow "Restaurants"
  Then I should see "Listing Restaurants"
