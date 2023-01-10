Feature: Testing different request on the best buy application


  Scenario: Check if the product api can be accessed by GET request
    When User sends a GET request to products endpoint
    Then user must get back a valid status code 200

  Scenario: Check if the product api can be accessed by POST request
    When User sends a POST request by providing the information to products endpoint
    Then user must get back valid status code 201

  Scenario: Check if the product api can be accessed by PUT request
    When User sends a PUT request by providing the information to products/id endpoint
    Then user get back valid status code 200

  Scenario: Check if the product api can be accessed by DELETE request
    When User sends a DELETE request to products/id endpoint
    Then user get back a valid status code 200



  Scenario: Check if  store api can be accessed by GET request
    When User sends a GET request to stores endpoint
    Then user must get back a valid status code 200

  Scenario: Check if  store api can be accessed by POST request
    When User sends a POST request by providing the information to stores endpoint
    Then User must get back valid status code 201 for post request

  Scenario: Check if the store api can be accessed by PUT request
    When User sends a PUT request by providing the information to stores/id endpoint
    Then user get back valid status code 200

  Scenario: Check if the store api can be accessed by DELETE request
    When User sends a DELETE request to stores/id endpoint
    Then user get back a valid status code 200



