Feature: Register users

  Background: 
    * def uri = 'https://reqres.in/'
    * def endPoint = '/api/register'

  Scenario: Register users Successful
    * def jsonBodyRequest = read('../dataJson/RegistroSuccessful.json')
    Given url (uri)
    And path (endPoint)
    And request jsonBodyRequest
    When method POST
    Then status 200

  Scenario: Register users Unsuccessful
    * def jsonBodyRequest = read('../dataJson/RegistroUnsuccessful.json')
    Given url (uri)
    And path (endPoint)
    And request jsonBodyRequest
    When method POST
    Then status 400