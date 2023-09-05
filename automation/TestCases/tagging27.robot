*** Settings ***

*** Test Cases ***
TC1 USer RegistrationTest
    [Tags]    regresion
    Log To Console    This is user registration test
    Log To Console    user registration test is over

TC2 LoginTest
    [Tags]    sanity
    Log To Console    this is login test
    Log To Console    login test is over

TC3 change user settings
    [Tags]    regresion
    Log To Console    this is changing user setting test
    Log To Console    change user setting test is over
TC4 logout test
    [Tags]    sanity
    Log To Console    this is logout test
    Log To Console    logout test is over

#command tp execute this tag
#robot --include=sanity TestCases/tagging27.robot
#robot --include=regresion TestCases/tagging27.robot
#robot -i sanity -i regresion TestCases/tagging27.robot
#robot -e regresion TestCases/tagging27.robot
#robot -e regresion -i sanity TestCases/tagging27.robot