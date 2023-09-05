
*** Test Cases ***
forloop
    FOR   ${i}  IN RANGE    1   10

    Log To Console    ${i}
    END
forloop2
    @{items}    Create List    1    2   3   4   5
    FOR    ${i}  IN   @{items}
    Log To Console    ${i}
    END
forloop3
    FOR    ${i}     IN    vijay    sharad  dnyanu  ganesh
    Log To Console    ${i}
    END
forloop4
    @{namelist}     Create List    vijay    sharad  dnyanu  ganesh
    FOR    ${i}     IN      @{namelist}
    Log To Console    ${i}
    END
forloop5withexit
    @{numberlist}   Create List    1    2   3   4   5   6   7   8
    FOR    ${i}     IN      @{numberlist}
    Log To Console      ${i}
    Exit For Loop If    ${i}==5
    END