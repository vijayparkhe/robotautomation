*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Navigation Test
    Open Browser    https://www.google.com/     chrome
    ${location}=    Get Location
    Log To Console      ${location}
    Sleep    3

    Go To    https://www.bing.com/
    ${location}=    Get Location
    Log To Console      ${location}
    Sleep    3

    Go Back
    ${location}=    Get Location
    Log To Console      ${location}
    Sleep    3
    Close Browser
    # if we want to change url in same page them go to keyword is used and when we want to
    # undo the page and want to back to previous page then go back


*** Keywords ***
