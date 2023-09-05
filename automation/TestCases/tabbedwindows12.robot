*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
TabbedWindowsTest
    Open Browser    https://demo.automationtesting.in/Windows.html      chrome
    Maximize Browser Window
    Click Element    xpath://body/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/a[1]/button[1]
    # if we want to switch window and on second window we want to perform operations then this will be methods
    Switch Window    title=Selenium
    Click Element    xpath://span[contains(text(),'Downloads')]
    Sleep   3
    Close All Browsers