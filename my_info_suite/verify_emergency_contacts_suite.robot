*** Settings ***
Documentation   This suite handles test case related to emergency contacts


Test Setup  Launch Browser
Test Teardown  Close Browser

Resource    ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Test Template       Verify Add Emergency Contact Templ
Library   DataDriver    file=../test_data/orange_data.xlsx      sheet_name=AddEmergencyContacts
*** Test Cases ***
TC1

*** Keywords ***
Verify Add Emergency Contact Templ
    [Arguments]     ${username}     ${password}     ${contact_name}     ${relationship}     ${home_ph}
    Enter UserName     ${username}
    Enter Password     ${password}
    Click Element       id=btnLogin
    Click Element       id=menu_pim_viewMyDetails
    Click Element       partial link=Emergency Contacts
    Click Element       id=btnAddContact

    Input Text          name=emgcontacts[name]       ${contact_name}
    Input Text          name=emgcontacts[relationship]      ${relationship}
    Input Text          name=emgcontacts[homePhone]       ${home_ph}

    Click Element       id=btnSaveEContact
    Table Should Contain        id=emgcontact_list      ${contact_name}
    Table Should Contain        id=emgcontact_list      ${relationship}
    Table Should Contain        id=emgcontact_list      ${home_ph}

