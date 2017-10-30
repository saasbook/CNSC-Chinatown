Feature: display results of filtering merchants list and restuarants list
  
    As a user looking for specific locations
    I want to filter by type of locations
    I should see the results of my filter
    
Background: locations have been added to the database
  
    Given the following points of interest exist:
    | name                             | address                  | description                                       |
    | Old St. Mary's Cathedral         | 660 California St.       | First Asian church in North America               |
    | Tianhou Temple                   | 125 Waverly Place        | Oldest Buddhist temple in the US                  |
    | Dragon's Gate                    | Bush St. & Grant Ave.    | Only authentic Chinatown Gate in North America    |
    | Hong Kong Clay Pot Restaurant    | 960 Grant Ave.           | Chinese clay pot lunch & dinner spot.             |
    | Hunan Home's Restaurant          | 622 Jackson St.          | Family owned Chinese cooking with booths          |
    | Good Mong Kok Bakery             | 1039 Stockton St.        | Homemade dim sum and baked goods                  |

    And I am on the Locations page
    Then 6 seed points should exist
    

Scenario: filter locations by restaurants
    Given I am on Points of Interest homepage
    When I follow "Restaurants"
    Then I should see "Hong Kong Clay Pot Restaurant"
    And "Hunan Home's Restaurant"
    And "Good Mong Kok Bakery"
    
