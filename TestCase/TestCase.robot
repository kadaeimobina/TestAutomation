*** Settings ***
Resource            ../pageObjectModel/FinishPage.robot
Resource            ../pageObjectModel/InstructionPage.robot
Resource            ../pageObjectModel/OpenBrowser.robot
Resource            ../pageObjectModel/QuestionsPage.robot
Resource            ../pageObjectModel/StartAssesment.robot
Test Teardown       Close Browser

*** Test Cases ***
Start Exam, Answer All Questions Correctly, and Verify Final Grade
    Given OpenBrowser.Open Browser
    When StartAssesment.Select Assesment from Dropdown Menu
    And InstructionPage.Click Start exam Button in Instruction Page
    And QuestionsPage.Select Correct Answer for all 10 Questions
    And FinishPage.Tap on Finish Button
    And FinishPage.Wait for the Table to Appear
    Then FinishPage.Validate if the Grade is "10"






