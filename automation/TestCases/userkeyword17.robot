*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot    #file is imported through Resource folder
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  Chrome
*** Test Cases ***
LOginToApplication
    ${pagetitle}=     LaunchBrowser   ${url}   ${browser}
    Log To Console    ${pagetitle}      # this is for print the title in console
    Log    ${pagetitle}                 #this is for print the title in report
    Click Link  xpath://a[contains(text(),'Log in')]
    Input Text  id:Email    vijay90p@gmail.com
    Input Text  id:Password     Kishor@1993
    Click Element  xpath://button[contains(text(),'Log in')]
    Close Browser


# keywords is stored in new file resources17.robot under Resources folder or Directory
#*** Keywords ***
#launchBrowser
#    [Arguments]    ${appurl}    ${appbrowser}
#    Open Browser  ${appurl}     ${appbrowser}
#    Maximize Browser Window
#    ${title}=    Get Title
#    [Return]    ${title}