*** Settings ***
Library             Browser         timeout=20000

*** Variables ***
${for_loop_value}                   10
${correct_answer_locator}           label:has(strong)
${save_and_continue_locator}        text=Save and continue

*** Keywords ***
Select Correct Answer for all 10 Questions
    FOR    ${question_number}       IN RANGE        ${for_loop_value}
        Click    ${correct_answer_locator}
        Click    ${save_and_continue_locator}
    END

