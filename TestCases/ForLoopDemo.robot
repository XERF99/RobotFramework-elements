*** Test Cases ***
#Forloop1
#    FOR    ${i}    IN RANGE    1    10
#        Log To Console    ${i}
#       Sleep    1s
#    END

#Forloop2    #con valores especificos
#    FOR    ${i}    IN 1 2 3 4 5 6 7 8
#        Log To Console    ${i}
#    END

#Forloop3ConListas
#    @{items}    Create List    1    2    3    4    5
#    FOR    ${i}     IN    @{items}
#        Log To Console    ${i}
#    END

#Forloop4
#    FOR    ${i}    IN    john    will    fran    scott
#        Log To Console    ${i}
#    END

#Forloop5
#    @{nameslista}    Create List    john    will    fran    scott
#    FOR    ${i}    IN    @{nameslista}
#        Log To Console    ${i}
#    END

Forloop6ConSalida
    @{items}    Create List    1    2    3    4    5
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}
        Exit For Loop If    ${i}==3
    END