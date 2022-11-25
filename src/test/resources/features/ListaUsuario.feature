Feature: Get list users

  Background: 
    * def uri = 'https://reqres.in/'
    * def endPoint = '/api/users?page=2'

  Scenario: List users
    Given url (uri)
    And path (endPoint)
    When method GET
    Then status 200