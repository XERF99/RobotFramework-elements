*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/RegistrationPageElements.py

*** Keywords ***
Open my browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    
Click Register Link
    Click Link    ${link_Reg}
    
Enter FirstName
    [Arguments]    ${firstName}
    Input Text    ${txt_firstName}    ${firstname}
    
Enter LastName
    [Arguments]    ${lastName}
    Input Text    ${txt_lastName}    ${lastname}    

Enter Phone
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}

Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}

Enter Address
    [Arguments]    ${address}
    Input Text    ${txt_add}    ${address}

Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}
    
Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}
    
Enter Post Code
    [Arguments]    ${postcode}
    Input Text    ${txt_postcode}    ${postcode}
   
Select Country
    [Arguments]    ${country}
    Select From List By Label    ${drp_country}    ${country}
    
Enter User Name
    [Arguments]    ${username}
    Input Text    ${txt_userName}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password}
    
Enter Confirmed Password
    [Arguments]    ${conformedPassword}
    Input Text    ${txt_conformedPassword}    ${conformedPassword}
    
Click Submit
    Click Button    ${btn_submit}

Verify Successful Registration
    Page Should Contain    Thank you for registering.

Close My Browser
    Close All Browsers
    