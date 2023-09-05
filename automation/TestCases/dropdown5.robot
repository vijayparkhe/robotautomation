*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Handling DropDowns and Lists
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    #select dropdown
    Select From List By Label    continents     Australia
    Sleep    3
    Select From List By Index    continents     6
    Sleep    5
    # list box
    Select From List By Label   selenium_commands   Switch Commands
    Select From List By Label   selenium_commands   WebElement Commands
    Select From List By Label   selenium_commands   Wait Commands
    Sleep    5
    Unselect From List By Label     selenium_commands    Switch Commands

*** Keywords ***
