*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testpages.eviltester.com/styled/reference/input.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    #Seleccionar Radio Buttons si tengo el name y el valor
    Select Radio Button    radio    One    #Select Radio Button es el tipo de accion, radio en este caso es el localizador y One es el valor que quiero que seleccione
    Sleep    2
    #Seleccionar checkbox se necesita el name del objeto
    Select Checkbox    checkbox
    Sleep    2
    Unselect Checkbox    checkbox
