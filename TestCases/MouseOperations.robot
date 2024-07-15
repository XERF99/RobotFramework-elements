*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Operaciones y Acciones de Mouse
    #Clic derecho con open context menu
    Open Browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window
    #Open context menu -> simula la accion de realizar un click derecho sobre el elemento en cuestion
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    3

    #Double click action o accion de doble click
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[normalize-space()='Copy Text']
    Sleep    3

    #Drag and Drop action con el mouse -> mover un elemento de un lugar a otro
    Drag And Drop    xpath://div[@id='draggable']    xpath://div[@id='droppable']
    Sleep    5
    Close Browser