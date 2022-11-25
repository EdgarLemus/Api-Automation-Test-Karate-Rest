Feature: Delete users

  Background: 
    * def uri = 'https://reqres.in/'
    * def endPoint = '/api/users/2'

  Scenario: Delete user
    Given url (uri)
    And path (endPoint)
    When method DELETE
    Then status 204
