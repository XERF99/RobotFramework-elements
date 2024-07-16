*** Settings ***
Library    SeleniumLibrary
Resource    ../Recursos/recursos.robot    #importo los recursos desde una ubicacion externa

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***

TC1
    ${PageTitle}=    launchBrowser    ${url}    ${browser}
    Log To Console    ${PageTitle}
    Log    ${PageTitle}
    Input Text    name:userName    mercury
    Input Text    name:password    mercury

