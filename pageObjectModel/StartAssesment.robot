*** Settings ***
Library             Browser         timeout=20000

*** Variables ***
${drop_down_menu_locator}           [name=recipe_id]
${assesment_locator}                select#sel_recipe
${start_button_locator}             [class="startbutton"]

*** Keywords ***
Select Assesment from Dropdown Menu
    Click                           ${drop_down_menu_locator}
    Select Options By               ${assesment_locator}           value            2
    Click                           ${start_button_locator}

