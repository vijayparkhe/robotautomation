*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  Chrome
*** Test Cases ***
LoginTest
    # if chromedriver is present in Scripts folder then we dont need following steps
    #create webdriver  chrome    executable_path="H:\robot framework\chromedriver_win32\chromedriver.exe"
    Open Browser  ${url}     ${browser}
    LOginToApplication
    Close Browser

*** Keywords ***
LOginToApplication
    Click Link  xpath://a[contains(text(),'Log in')]
    Input Text  id:Email    vijay90p@gmail.com
    Input Text  id:Password     Kishor@1993
    Click Element  xpath://button[contains(text(),'Log in')]

