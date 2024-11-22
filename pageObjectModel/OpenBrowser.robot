*** Settings ***
Library             Browser         timeout=20000

*** Variables ***
${url}                              https://paragin.remindotoetsdemo.nl/
${headless_status}                  ${False}

*** Keywords ***
Open Browser
    New Browser                     headless=${headless_status}
    New Page                        ${url}
    Set Viewport Size               1512        823