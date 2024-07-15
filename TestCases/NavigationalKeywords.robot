*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
NavegacionTest
    Open Browser    https://www.google.com/    chrome
    ${Location}=    Get Location
    Log To Console    ${location}

    Sleep    2
    Go To    https://www.bing.com/
    ${Location}=    Get Location
    Log To Console    ${location}

    Sleep    2
    Go Back
    ${Location}=    Get Location
    Log To Console    ${location}

    Sleep    2