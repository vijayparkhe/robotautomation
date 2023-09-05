*** Settings ***
Library    SeleniumLibrary
Variables    ../pageobjects/locators28.py

*** Keywords ***
open my browsers
    [Arguments]    ${siteurl}   ${browsername}
    Open Browser    ${siteurl}   ${browsername}
    Maximize Browser Window
enter username
    [Arguments]    ${username}
    Input Text  ${txt_loginUserName}    ${username}
enter password
    [Arguments]    ${password}
    Input Text    ${txt_loginpassword}  ${password}
click signIn
    Click Button    ${btn_signIn}
verify successfulllogin
    Title Should Be    nopCommerce demo store. Password Recovery
close my broowser
    Close All Browsers
