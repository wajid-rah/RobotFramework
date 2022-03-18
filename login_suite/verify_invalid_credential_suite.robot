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
TC3     ${EMPTY}    abf123      Username cannot be empty
TC4     abc     ${EMPTY}        Password cannot be empty

*** Keywords ***
Verify Invalid Credential Templ
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text      id=txtUsername      ${username}
    Input Password      id=txtPassword      ${password}
    Click Element       id=btnLogin
    Element Text Should Be    //span[@id="spanMessage"]    ${expected_error}



