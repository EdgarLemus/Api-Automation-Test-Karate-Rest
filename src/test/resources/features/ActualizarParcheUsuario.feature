Feature: Update patch users

  Background: 
    * def uri = 'https://reqres.in/'
    * def endPoint = '/api/users/2'

  Scenario: Update patch user
    * def jsonBodyRequest = read('../dataJson/ActualizacionUsuario.json')
    Given url (uri)
    And path (endPoint)
    And request jsonBodyRequest
    When method PATCH
    Then status 200