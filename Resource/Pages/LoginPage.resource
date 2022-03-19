*** Settings ***
Documentation  This file handles all operation in the login pages
Resource  ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername
${PASSWORD_LOCATOR}     id=txtPassword

*** Keywords ***
Enter UserName
    [Arguments]     ${username}
    Input Text   ${USERNAME_LOCATOR}     ${username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${PASSWORD_LOCATOR}       ${password}
