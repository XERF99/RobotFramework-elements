*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.twinkl.es/teaching-wiki/banderas-del-del-mundo    chrome
    Maximize Browser Window
    Sleep    2
    #Execute Javascript    window.scrollTo(0,1500)    #llamando a una funcion de JS para realizar scroll en la pagina web
    #Sleep    2
    #Scroll Element Into View    xpath://td[normalize-space()='Ecuador']    #hacer scroll hasta el elemento

    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)    #realiza scroll hasta el final de la pagina
    Sleep    2
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    #realiza scroll hasta el inicio de la pagina
    Sleep    2
