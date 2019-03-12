
@fit_test
Feature: Automation practice form

  @test_1
  Scenario: Verification of the Partial Link Test
    Given Main Page "https://www.toolsqa.com/automation-practice-form/"
    When Click on the link
    Then Check open page "https://www.toolsqa.com/automation-practice-form/"

  @test_2
  Scenario: Verefication of Link Test
    Given Main Page "https://www.toolsqa.com/automation-practice-form/"
    When Click on the link1
    Then Check open page1 "https://www.toolsqa.com/automation-practice-table/"

  @test_3
  Scenario: Write name
    Given Main Page "https://www.toolsqa.com/automation-practice-form/"
    When input name "Dima"
    Then Check name "Dima" in the field

  @test_4
  Scenario: Write name
    Given Main Page "https://www.toolsqa.com/automation-practice-form/"
    When input last name "Sadouski"
    Then Check last name "Sadouski" in the field



   @test_5
   Scenario: Selected Male radio button
     Given Main Page "https://www.toolsqa.com/automation-practice-form/"
     When click on the Male radio button
     Then Check that male radio button selected
#     Then Check that female radio button doesn't selected

  @test_6
  Scenario: Write current date
    Given Main Page "https://www.toolsqa.com/automation-practice-form/"
    When input current date
    Then Check that in field current date

  @test_7
  Scenario: Select checkbox 1
    Given Main Page "https://www.toolsqa.com/automation-practice-form/"
    When Select checkbox Manual Tester
    Then Check checkbox 1 selected
    Then Check that checkbox 2 unselected

  @test_8
  Scenario: Verification of 3-rd element
    Given Table page "https://www.toolsqa.com/automation-practice-table/"
    When 3-rd element searched
#    Then Puts it