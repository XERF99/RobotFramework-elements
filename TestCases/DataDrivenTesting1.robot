*** Settings ***
Library    SeleniumLibrary
Resource    ../Recursos/login_recursos.robot
Suite Setup    Open My Browser    #siempre se ejecuta antes de cada caso de prueba
Suite Teardown    Close Browsers     #siempre se ejecuta despues de cada caso de prueba
Test Template    Invalid Login


*** Test Cases ***        username            pasword
Right user empty pwd
    admin@yourstore.com    ${EMPTY}
Right user wrong pwd
    admin@yourstore.com    xyz
Wrong user right pwd
    admin@yourstorssse.com    admin
Wrong user empty pwd
    admin@yourstorssse.com    ${EMPTY}
Wrong user wrong pwd
    admin@yourstorssse.com    xyz
    


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Message Should Be Visible