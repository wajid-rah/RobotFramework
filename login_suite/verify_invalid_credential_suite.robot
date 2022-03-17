*** Settings ***
Documentation   This suite will handles all the test cases related to Invalid
...     credential test. Test case - TC_OH_2

Test Teardown  Close Browser

Resource    ../Resource/Base/CommonFunctionality.resource

*** Test Cases ***
Verify Valid Credential Test
    Launch Browser
    Input Text      id=txtUsername      yolo
    Input Password      id=txtPassword      passing
    Click Element       id=btnLogin
    Element Text Should Be    //span[@id="spanMessage"]    Invalid credentials