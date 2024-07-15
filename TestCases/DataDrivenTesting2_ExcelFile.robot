*** Settings ***
Library    SeleniumLibrary
Resource    ../Recursos/login_recursos.robot
Library    DataDriver    ../TestData/loginData.xlsx    sheet=Hoja1

Suite Setup    Open My Browser
Suite Teardown    Close Browser
Test Template    Invalid Login    

*** Test Cases ***
LoginTestwithExcel
    using     ${username}    and    ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input password    ${password}
    Click Login Button
    Error Message Should Be Visible
