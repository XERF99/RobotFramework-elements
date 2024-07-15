*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandingAlerts
    Open Browser    https://testautomationpractice.blogspot.com/   chrome
    Click Element    //button[normalize-space()='Confirm Box']    #open alert
    Sleep    3
    #Handle Alert    accept    #en caso de que se deba confirmar la alerta
    #Handle Alert    dismiss    #en caso de que se rechace la alerta
    #Handle Alert    leave    #ignoro la alerta
    #Alert Should Be Present    Press a button!    #cierra la alerta que contenga el texto de la alerta en cuestion
    # tambien existe la negacion de Alert Should Be Present que es con un NOT

