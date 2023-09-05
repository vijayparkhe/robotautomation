*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources22.robot
Suite Setup     Open My Browser
Suite Teardown      Close Browsers
Test Template   Invalidlogin
*** Test Cases ***  username    password
right user empty pwd    admin@gmail.com     ${EMPTY}
right user wrng pwd     admin@gmail.com     ad123
wrong user right pwd    adm@gmail.com       admin123
wrong user wrong pwd    admi@gmail.com      admin14532
wrong user empty pwd    adm@gmail.com       ${EMPTY}

*** Keywords ***
Invalidlogin
    [Arguments]    ${username}      ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Msg Should Be Visible