*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources22.robot
Library    DataDriver   ../Testdata/login.xlsx      sheet_name=Sheet1
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login
*** Test Cases ***
logintestwithexcel      ${username}     ${password}

*** Keywords ***
invalid login
    [Arguments]    ${username}  ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Msg Should Be Visible