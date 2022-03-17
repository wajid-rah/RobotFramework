*** Settings ***
Documentation   This suite will handles all the test cases related to Invalid
...     credential test. Test case - TC_OH_2

Test Setup  Launch Browser
Test Teardown  Close Browser

Resource    ../Resource/Base/CommonFunctionality.resource
Test Template       Verify Invalid Credential Templ


*** Test Cases ***
TC1     John    john123     Invalid credentials
TC2     peter   peter123    Invalid credentials

*** Keywords ***
Verify Invalid Credential Templ
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text      id=txtUsername      ${username}
    Input Password      id=txtPassword      ${password}
    Click Element       id=btnLogin
    Element Text Should Be    //span[@id="spanMessage"]    ${expected_error}


