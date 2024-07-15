*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest


    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    
    ${time}=    Get Selenium Timeout
    Log To Console    ${time}
    
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Register    # debo poner el nombre de la pagina a la que voy a hacer referencia tiene una espera de 5 segundos
    
    Select Radio Button    Gender    M
    Input Text    name:FirstName    Francisco
    Input Text    name:LastName    Rodriguez
    Input Text    name:Email    anhc@gmail.com
    Input Text    name:Password    davidjohn
    Input Text    name:ConfirmPassword    davidjohn

    