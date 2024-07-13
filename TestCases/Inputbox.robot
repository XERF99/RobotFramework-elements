*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}     https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window    #Maximizo una ventana
    Title Should Be    nopCommerce demo store        #Verifico que el titulo sea correcto
    Click Link    xpath://a[normalize-space()='Log in']   #Capturo el elemento, como es un enlace coloco link
    # Estado de visibilidad
    ${email_txt}    Set Variable    id:Email    #En una variable llamada email_txt le digo que le pongo el valor del localizador
    Element Should Be Visible    ${email_txt}    #Compruebo que el elemento esta visibile, para el caso contrario se usa NO
    Element Should Be Enabled    ${email_txt}    #Compruebo que el elemento esta activo
    
    Input Text    ${email_txt}    franmach@gmail.com    #A la variable que declare antes le coloco el email
    Sleep    3    #Espero 3 segundos
    Clear Element Text    ${email_txt}    #Limpio el elemento
    Sleep    3    #Espero otros 3 segundos
    Close Browser    #Cierro el navegador

*** Keywords ***
