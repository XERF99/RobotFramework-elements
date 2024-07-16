*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}    headlesschrome
${SiteUrl}    https://demo.guru99.com/test/newtours/index.php

*** Test Cases ***
RegistrationTest
    Open My Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName    Francisco
    Enter LastName    Rodriguez
    Enter Phone    1234567890
    Enter Email    francrod@gmail.com
    Enter Address    mi casa 123
    Enter City    mi ciudad
    Enter State    mi estado
    Enter Post Code    L3S 1E7
    Select Country    ECUADOR
    Enter User Name    franxyz
    Enter Password    franxyz
    Enter Confirmed Password    franxyz
    Click Submit
    Verify Successful Registration
    Close My Browser
    