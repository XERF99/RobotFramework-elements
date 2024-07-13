*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
${email}    franmach@gmail.com
${password}    Test@456

*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[normalize-space()='Log in']
    input text  id:Email    ${email}
    input text  id:Password     ${password}
    click element   xpath://button[normalize-space()='Log in']