*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
getalllinkstest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    ${getalllinkscount}=  Get Element Count    xpath://a
    Log To Console    ${getalllinkscount}

    FOR    ${i}     IN RANGE    1   ${getalllinkscount}+1
    ${linktext}=    Get Text    xpath:(//a)[${i}]
    Log To Console    ${linktext}
    Log    ${linktext}
    END
    Close Browser
