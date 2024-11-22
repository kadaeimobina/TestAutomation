*** Settings ***
Library             Browser         timeout=20000

*** Variables ***
${start_button_instruction_locator}             text=Start exam >> nth=1

*** Keywords ***
Click Start exam Button in Instruction Page
    Click                  ${start_button_instruction_locator}