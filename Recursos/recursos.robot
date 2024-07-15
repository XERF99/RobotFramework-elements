*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}    #agregando argumentos a una funcion
    Open Browser    ${appurl}    ${appbrowser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}

