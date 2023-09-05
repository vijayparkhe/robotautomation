*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
MyTestcase
    Open Browser    https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window

    Open Browser    https://www.youtube.com/watch?v=AgD0PBNYZDA&t=12s   chrome
    Maximize Browser Window

    #Close Browser  <----this will close recently open browser
    Close All Browsers

