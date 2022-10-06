@premier
Feature: first test API
  @test01
  Scenario: get status response
    Given  url urlServeur
    When method get
    Then status 200
    And print response
    @test02
  Scenario: get status response
    Given  url urlServeur
    And request  data :[{'first_name' : 'George'}]
    When  method get
    Then status 200
    And print response