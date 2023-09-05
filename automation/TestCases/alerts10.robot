*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
HandlingAlerts
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="HTML9"]/div[1]/button[2]    #this will open alert
    Sleep    2
    #Handle Alert    accept      #this will click on OK button
    #Handle Alert    dismiss     #this will click on Cancel button
    #Handle Alert    leave       #to keep alert window for some time or leave alert for some time

    # if we want to confirm the message on alert box then we use following command
    #Alert Should Be Present    Press a button!

    # if we want negative test case
    #Alert Should Not Be Present    Press a button!      #<--- for this scenario testcase will fall

