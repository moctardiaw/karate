@deuxieme
Feature: second test API
  @test03
  Scenario: get status response email
    Given  url 'https://reqres.in/api/users'
    When  method get
    And param page = 1
    #And  request { data[0]{ email: 'eve.holt@reqres.in' } }
    #And  request data[0]{email : 'george.bluth@reqres.in'}
    And request {email:'eve.holt@reqres.in'}
    Then status 200
    #And match  response.data[0].email ==  'george.bluth@reqres.in'
    And print 'la reponse : ', response.data

