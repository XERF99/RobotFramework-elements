*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ValidacionesDeTabla
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

    ${filas}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${columnas}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    
    Log To Console    ${filas}
    Log To Console    ${columnas}
    #Obtener un elemento en concreto de la tabla
    ${Dato}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${Dato}
    #Comprobar que los valores sean correctos en una tabla, por ejemplo, en la tabla demo en la columna 2 se
    #espera que el valor sea igual a Author
    Table Column Should Contain    xpath://table[@name='BookTable']    2     Author
    Table Row Should Contain    xpath://table[@name='BookTable']    4    Learn JS
    #Comprobar por medio de la columna y fila al mismo tiempo con cell
    Table Cell Should Contain    xpath://table[@name='BookTable']    5    2    Mukesh
    #Comprobar la cabecera de la tabla
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName