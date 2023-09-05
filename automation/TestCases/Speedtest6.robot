*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
RegTest
    # default speed of Set Selenium Speed    is given by this
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window
    #if we want to give time sleep for every action then we use selenium Set Selenium Speed
    Set Selenium Speed    3 Seconds
    Select Radio Button    Gender   M
    Input Text    id:FirstName     Vijay
    Input Text    id:LastName      Parkhe
    Input Text    id:Email     vijay90p@gmail.com
    Input Text    id:Password      vijayparkhe
    Input Text    id:ConfirmPassword   vijayparkhe
    Click Button    register-button
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
*** Keywords ***

