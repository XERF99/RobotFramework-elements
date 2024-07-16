*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Frames
    Open Browser    https://seleniumhq.github.io/selenium/docs/api/java/index    chrome

    #Select Frame    packageListFrame    #se puede hacer referencias a un frame usando su id name xpath
    #Click Link    org.openqa.selenium
    #Unselect Frame

    #Sleep    3

    #Select Frame    packageFrame
    #Click Link    WebDriver
    #Unselect Frame

    #Sleep    3

    #Select Frame    classFrame
    #Click Link    Help
    #Unselect Frame

    Close Browser