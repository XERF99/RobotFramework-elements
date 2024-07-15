*** Settings ***
Library    SeleniumLibrary
Resource    ../Recursos/login_recursos.robot
Library    DataDriver    ../TestData/loginData.csv

Suite Setup    Open My Browser
Suite Teardown    Close Browser
Test Template    Invalid Login    

*** Test Cases ***
LoginTestwithCsv
    using     ${username}    and    ${password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input password    ${password}
    Click Login Button
    Error Message Should Be Visible
