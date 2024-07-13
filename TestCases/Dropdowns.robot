*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}    https://testpages.eviltester.com/styled/basic-html-form-test.html

*** Test Cases ***
Handling Dropdowns and Lists
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
    #Para seleccionar elementos de una lista necesito el name, se puede 
    #seleccionar por label o sea el texto o por el numero el index o valor(value)
    #value o valor solo funciona cuando el drowpdown tiene el atributo option
    Select From List By Label    dropdown    Drop Down Item 1
    Sleep    3
    Select From List By Index    dropdown    5
    Sleep    3
    Select From List By Value    dropdown    dd5
    Sleep    2
    #Selecionar elementos de una lista de multiples valores list-box
    #Tambien se pueden deseleccionar elementos con el Unselect
    Select From List By Label    multipleselect[]    Selection Item 1
    Select From List By Label    multipleselect[]    Selection Item 2
    Sleep    2
    Unselect From List By Label    multipleselect[]    Selection Item 1
