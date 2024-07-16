*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Test Cases ***
RegTest


    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    
    ${implicitTime}=    Get Selenium Implicit Wait    #capturo el tiempo por defecto de espera implicita de selenium
    Log To Console    ${implicitTime}
    
    Set Selenium Implicit Wait    10 seconds    #espera hasta un maximo de 10s para buscar un elementos si no lo encuentra manda el error

    ${implicitTime}=    Get Selenium Implicit Wait    #capturo el tiempo por defecto de espera implicita de selenium
    Log To Console    ${implicitTime}
    
    Select Radio Button    Gender    M
    Input Text    name:FirstName    Francisco
    Input Text    name:LastName    Rodriguez
    Input Text    name:Email    anhc@gmail.com
    Input Text    name:Password    davidjohn
    Input Text    name:ConfirmPassword    davidjohn

    