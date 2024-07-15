*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login_url}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}    chrome

*** Keywords ***
Open my browser
    Open Browser    ${Login_url}    ${browser}
    Maximize Browser Window

Close Browsers
    Close All Browsers
   
Open Login
    Go To    ${Login_url}

Input username
    [Arguments]    ${username}
    Input Text    id:Email    ${username}

Input password
    [Arguments]    ${password}
    Input Text    id:Password    ${password}

Click Login button
    Click Element    xpath://button[normalize-space()='Log in']

Click logout link
    Click Link    Logout

Error message should be visible
    Page Should Contain    Login was unsuccessful.

Dashboard page should be visible
    Page Should Contain    Dashboard
