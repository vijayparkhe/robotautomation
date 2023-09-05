*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_keywords28.robot

*** Variables ***
${browser}      chrome
${siteurl}      https://demo.nopcommerce.com/login?returnUrl=%2F
${user}     vijay90p@gmail.com
${pwd}      dimple123

*** Test Cases ***
Logintest
    Open My Browsers    ${siteurl}  ${browser}
    Enter Username    ${user}
    Enter Password    ${pwd}
    Click SignIn
    Verify Successfulllogin
    Close My Broowser
