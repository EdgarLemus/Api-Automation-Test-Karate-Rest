Feature: Create users

  Background: 
    * def uri = 'https://reqres.in/'
    * def endPoint = '/api/users'

  Scenario: Create user
    * def jsonBodyRequest = read('../dataJson/CreacionUsuario.json')
    Given url (uri)
    And path (endPoint)
    And request jsonBodyRequest
    When method POST
    Then status 201
