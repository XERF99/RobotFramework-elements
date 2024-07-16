*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}    chrome
${SiteUrl}    https://demo.guru99.com/test/newtours/index.php
${user}    tutorial
${pwd}    tutorial

*** Test Cases ***
LoginTest
    Open My Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click SignIn
    Sleep    3 seconds
    Verify Successful Login
    Close My Browser