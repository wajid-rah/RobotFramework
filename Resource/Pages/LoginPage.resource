*** Settings ***
Documentation  This file handles all operation in the login pages
Resource  ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername


*** Keywords ***
Enter UserName
    [Arguments]     ${username}
    Input Text   ${USERNAME_LOCATOR}     ${username}

