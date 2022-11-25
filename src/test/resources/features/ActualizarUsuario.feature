Feature: Update users

  Background: 
    * def uri = 'https://reqres.in/'
    * def endPoint = '/api/users/2'

  Scenario: Update users
    * def jsonBodyRequest = read('../dataJson/ActualizacionUsuario.json')
    Given url (uri)
    And path (endPoint)
    And request jsonBodyRequest
    When method PUT
    Then status 200