*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources22.robot
Library    DataDriver   ../Testdata/login.csv
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalidlogin
*** Test Cases ***
loginwithcsvfile

*** Keywords ***
Invalidlogin
    [Arguments]    ${username}      ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Msg Should Be Visible