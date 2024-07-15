*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestCase
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    
    Open Browser    http://www.automationpractice.pl/index.php    chrome
    Maximize Browser Window

    Close All Browsers    #cierra todas las ventanas que esten abiertas a diferencia del comando Close Browsers