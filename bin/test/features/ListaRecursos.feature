Feature: Get list resources

  Background: 
    * def uri = 'https://reqres.in/'
    * def endPoint = 'api/unknown'

  Scenario: List resources
    Given url (uri)
    And path (endPoint)
    When method GET
    Then status 200