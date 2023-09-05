*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    //a[contains(text(),'Log in')]
    ${"email_txt"}  Set Variable    id:Email

    Element Should Be Visible    ${"email_txt"}
    #Element Should Not Be Visible   ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}

    Input Text    ${"email_txt"}    vijay90p@gmail.com
    Sleep    5
    Clear Element Text  ${"email_txt"}
    Sleep    3
    Close Browser



*** Keywords ***
