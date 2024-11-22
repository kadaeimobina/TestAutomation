*** Settings ***
Library             Browser         timeout=20000

*** Variables ***
${finish_button_locator}               [class="icon-solid icon-finish"]
${table_element_locator}               text=Grade
${grade_value_locator}                 tr >> td >> nth=0
${grade_expectation}                   10

*** Keywords ***
Tap on Finish Button
    Click                       ${finish_button_locator}

Wait for the Table to Appear
    Wait For Elements State     ${table_element_locator}

Validate if the Grade is "10"
    ${grade_number}         Get Text            ${grade_value_locator}
    Log                     ${grade_number}
    Should Be Equal As Numbers                  ${grade_number}             ${grade_expectation}