@test
Feature: Google search

  @test1
  Scenario: Simple search
    Given Login google
    When Input in search field "cheese!"
    When Click submit button
    Then Check page title "cheese! - Поиск в Google"


  @test2
  Scenario: Simple search
    Given Login google
    When Input in search field "cheese!"
    When Click submit button
    Then Check page title "cheesedfd! - Поиск в Google"