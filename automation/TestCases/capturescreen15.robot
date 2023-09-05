*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
LoginTC
    Open Browser    https://demo.nopcommerce.com/login?returnUrl=%2F  chrome
    Maximize Browser Window
    Input Text    id:Email     Admin
    Input Text    id:Password     admin123

    #Capture Element Screenshot    xpath:/html/body/div[6]/div[1]/div[2]/div[1]/a/img     H:/robot_framework/automation/screenshotimages/logo.png
    #Capture Page Screenshot     H:/robot_framework/automation/screenshotimages/LoginTC.png
    #Close Browser

    # we are not specifying path where the image should be saved then what will hapen let us see
    Capture Element Screenshot    xpath:/html/body/div[6]/div[1]/div[2]/div[1]/a/img    logo1.png
    Capture Page Screenshot    LoginTC1.png
    # so it will save in project directory
