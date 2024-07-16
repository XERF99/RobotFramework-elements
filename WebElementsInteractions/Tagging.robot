*** Settings ***


*** Test Cases ***
# para ejecutar un caso en especifico se necesita usar tags
# para realizar la ejecucion es necesario colocar la palabra clave robot seguido de --include=tag que se quiere ejecutar y la ruta del archivo.robot
# ejemplo: robot --include=login .\WebElementsInteractions\Tagging.robot
# tambien se pueden ejecutar varios tags a la vez, la palabra include se puede simplificar por una "i"
# ejemplo: robot --i=login --i=regression .\WebElementsInteractions\Tagging.robot
# Por otra parte tambien se pueden excluir casos en concreto, por ejemplo, si se tienen 50 casos con diferentes nombres y se quiere ejecutar 49 y solo excluir 
# uno o mas casos, esto se lo puede realizar de la siguiente manera: se coloca la palabra clave robot seguido de --exclude=tag que se quiere ejecutar y la ruta del archivo.robot
# ejemplo: robot -e login --i=regression .\WebElementsInteractions\Tagging.robot     tambien se puede simplificar el exclude con una "e"
TC1 User registration test
    [Tags]    regression
    Log To Console    This is user registration test
    Log To Console    user registration test is over

TC2 Login test
    [Tags]    login
    Log To Console    This is login test
    Log To Console    Login test is over

TC3 Change user settings
    [Tags]    settings
    Log To Console    This is changing user settings test
    Log To Console    Change user settings is over

TC4 Logout Test
    [Tags]    logout
    Log To Console    This is logout test
    Log To Console    logout test is over

