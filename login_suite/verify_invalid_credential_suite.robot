*** Settings ***
Documentation   This suite will handles all the test cases related to Invalid
...     credential test. Test case - TC_OH_2

Test Setup  Launch Browser
Test Teardown  Close Browser

Resource    ../Resource/Base/CommonFunctionality.resource

*** Test Cases ***
Verify Valid Credential Test
    Input Text      id=txtUsername      yolo
    Input Password      id=txtPassword      passing
    Click Element       id=btnLogin
    Element Text Should Be    //span[@id="spanMessage"]    Invalid credentials