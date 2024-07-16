*** Settings ***
Suite Setup    Log To Console    Opening Browser    #se ejecuta entes de todos los test
Suite Teardown    Log To Console    Closing Browser    #se ejecuta después de que todos los test han pasado

Test Setup    Log To Console    Login to application    #se ejecuta antes de cada test
Test Teardown    Log To Console    Logout from application    #se ejecuta después de cada test

*** Test Cases ***
TC1 Prepaid recharge
    Log To Console    This is prepaid recharge testcase

TC2 Postpaid recharge
    Log To Console    This is postpaid recharge testcase

TC3 Search
    Log To Console    This is Search test case \

TC4 Advance Search
    Log To Console    This is Adv Search Test case    