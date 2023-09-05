*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}   Chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    # selecting radio button name value of button
    Select Radio Button     sex     Female
    Select Radio Button    exp  5

    #Selecting Checkbox
    Select Checkbox     Automation Tester
    Select Checkbox    Manual Tester
    Sleep    2
    Unselect Checkbox   Automation Tester
    Sleep    2
    Close Browser


*** Keywords ***
