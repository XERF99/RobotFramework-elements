*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window

    Set Selenium Speed    2 seconds    # doy una pausa a todos los elementos que esten dentro del caso de prueba

    Select Radio Button    Gender    M
    
    Input Text    name:FirstName    Francisco
    Input Text    name:LastName    Rodriguez
    Input Text    name:Email    anhc@gmail.com
    Input Text    name:Password    davidjohn
    Input Text    name:ConfirmPassword    davidjohn
    
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}