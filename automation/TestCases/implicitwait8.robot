*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
RegTest
    Open Browser    https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window
    # if we want to know default time of Implicit Wait
    ${implicitwait}=    Get Selenium Implicit Wait
    Log To Console    ${implicitwait}
    # if we want to wait selenium to locate locators we use Set Selenium Implicit Wait
    Set Selenium Implicit Wait    10 seconds

    ${implicitwait}=    Get Selenium Implicit Wait
    Log To Console    ${implicitwait}

    Select Radio Button    Gender   M
    Input Text    id:FirstName1     Vijay
    Input Text    id:LastName      Parkhe
    Input Text    id:Email     vijay90p@gmail.com
    Input Text    id:Password      vijayparkhe
    Input Text    id:ConfirmPassword   vijayparkhe
    # if the locators is not correct or present then it will show error
*** Keywords ***
