Feature: Json server dummy rest API
  Running a local json server to serve as a dummy rest API
  to demonstrate CRUD operations

  Background: 
    Given the user sets the endpoint to "baseURI"

  Scenario: create an user and delete it
    When the user has the following data:
      | name | Rishabh |
      | age  |      32 |
    And the user makes a post request to "users"
    Then the response should have status code 201
    And show the response
    And the user stores the id
    And the user makes a delete request to "userid"
    And the response should have status code 200

  Scenario: get a list of users
    When the user wants to get page 2
    And the user makes a get request to "users"
    Then the response should have status code 200

  Scenario: update an user with put
    When the user has the following data:
      | name | Abhishek |
      | age  |       20 |
      | job  | QA       |
    And the user has an id of 12
    And the user makes a put request to "userid"
    Then the response should have status code 200
    And validate the response against the following data:
      | name | Abhishek |
      | age  |       20 |
      | job  | QA       |

  Scenario: update an user with patch
    When the user has the following data:
      | job | QA |
    And the user has an id of 5
    And the user makes a patch request to "userid"
    Then the response should have status code 200
    And validate the response against the following data:
      | job | QA |
