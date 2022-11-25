Feature: Login users

  Background: 
    * def uri = 'https://reqres.in/'
    * def endPoint = '/api/login'

  Scenario: Register users Successful
    * def jsonBodyRequest = read('../dataJson/LoginSuccessful.json')
    Given url (uri)
    And path (endPoint)
    And request jsonBodyRequest
    When method POST
    Then status 200

  Scenario: Register users Unsuccessful
    * def jsonBodyRequest = read('../dataJson/LoginUnsuccessful.json')
    Given url (uri)
    And path (endPoint)
    And request jsonBodyRequest
    When method POST
    Then status 400