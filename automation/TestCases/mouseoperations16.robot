*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
MouseActions
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    Maximize Browser Window
    # Open Context Menu-Right click--> will have perform action right click on element
    Open Context Menu   xpath:/html/body/div/section/div/div/div/p/span
    Sleep    3

    # double click-->
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[contains(text(),'Copy Text')]
    Sleep    3

    #Drag And Drop -->
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    Sleep    3
    Close Browser
