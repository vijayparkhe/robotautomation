*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
RegTest
    Open Browser    https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window
    # if we want to know the time of Get Selenium Timeout the this is the procedure
    ${time}     Get Selenium Timeout
    Log To Console    ${time}
    # if we want some conditions like Refister name have to apper on page then following command should
    #run then this will be procedure
    Set Selenium Timeout    10 seconds      # if we want customised timeout
    Wait Until Page Contains    Register

    # selenium will wait default 5 seconds to get that condition
    Select Radio Button    Gender   M
    Input Text    id:FirstName     Vijay
    Input Text    id:LastName      Parkhe
    Input Text    id:Email     vijay90p@gmail.com
    Input Text    id:Password      vijayparkhe
    Input Text    id:ConfirmPassword   vijayparkhe
    ${time}     Get Selenium Timeout
*** Keywords ***
