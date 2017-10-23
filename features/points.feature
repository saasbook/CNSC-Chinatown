Feature: display points of interest on Points of Interest page

  As a tourist searching for Chinatown points of interest
  So that I can quickly locate popular China attractions
  I want to see the list of points of interest

Background: points of interest have been added to the database

  Given the following points of interest exist:
  | name                             | address                  | description                                       |
  | Old St. Mary's Cathedral         | 660 California St.       | first Asian church in North America               |
  | Tianhou Temple                   | 125 Waverly Place        | oldest Buddhist temple in the US                  |
  | Dragon's Gate                    | Bush St. & Grant Ave.    | only authentic Chinatown Gate in North America    |

  And I am on the Points page
  Then 3 seed points should exist

Scenario: navigate to points of interest page
  Given I am on the Chinatown homepage
  When I press "openNav"
  And I follow "Points of Interest"
  Then I should see "Listing Points of Interest"
