*** Settings ***
Test Template         Login with invalid credentials should fail

*** Test Cases ***    USERNAME             PASSWORD
Invalid Username      invalid              ${VALID PASSWORD}
Invalid Password      ${VALID USERNAME}    invalid
Invalid Both          invalid              invalid
Empty Username        ${EMPTY}             ${VALID PASSWORD}
Empty Password        ${VALID USERNAME}    ${EMPTY}
Empty Both            ${EMPTY}             ${EMPTY}

*** Keywords ***
Login with invalid credentials should fail
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Error Page Should Be Open