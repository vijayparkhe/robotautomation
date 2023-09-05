*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${login url}      https://demo.nopcommerce.com/login?returnUrl=%2F
${browser}      chrome
*** Keywords ***
Open my Browser
    Open Browser    ${login url}  ${browser}
    Maximize Browser Window

Close browsers
    Close All Browsers
open login page
    Go To    ${login url}

input username
    [Arguments]    ${username}
    Input Text    id:Email      ${username}

input password
    [Arguments]    ${password}
    Input Text    id:Password   ${password}
click login button
    Click Element    xpath://button[contains(text(),'Log in')]
click logout button
    Click Link    Logout
error msg should be visible
    Page Should Contain    Login was unsuccessful
dashboard page should be visible
    Page Should Contain    Dashboard