*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
Testing Frames
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?org/openqa/selenium/package-summary.html     chrome
    Maximize Browser Window
    # to select frame we need to select either frame id,name, or either locators of frame
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep    3
    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame
    Sleep    3
    Select Frame    classFrame
    Click Link  Index
    Unselect Frame
    Sleep    3
    Close Browser
*** Keywords ***
