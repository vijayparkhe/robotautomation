*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tablevalidations
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    #number of rows will be
    ${row}=     Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    # nymber of columns will be
    ${column}=      Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${row}
    Log To Console    ${column}

    # from table we need to capture text value or data in table fifth row first column  -->ans Master in Selenium
    ${data}     Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}

    # to validate the Table
    Table Column Should Contain    xpath://table[@name='BookTable']     2   Author
    Table Row Should Contain    xpath://table[@name='BookTable']    4   Javascript
    Table Cell Should Contain    xpath://table[@name='BookTable']   5   3   Selenium
    Table Header Should Contain    xpath://table[@name='BookTable']     Price
    Close Browser