*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
NavegacionEntrePestanas
    Open Browser    http://demo.automationtesting.in/Windows.html    chrome
    Maximize Browser Window
    Click Element    xpath:(//button[@class='btn btn-info'][normalize-space()='click'])[1]
    Switch Window    title=Selenium
    Wait Until Element Is Visible     xpath://span[normalize-space()='Blog']    3
    Click Element    xpath://span[normalize-space()='Blog']
    Sleep    3
    Close All Browsers