*** Settings ***
Documentation   This suite will handles all the test cases related to valid
...     credential test. Test case - TC_OH_2

Test Teardown  Close Browser

Resource    ../Resource/Base/CommonFunctionality.resource

*** Test Cases ***
Verify Valid Credential Test
    Launch Browser
    Input Text      id=txtUsername      Admin
    Input Password      id=txtPassword      admin123
    Click Element       id=btnLogin
    Page should Contain     My Info
    Capture Page Screenshot