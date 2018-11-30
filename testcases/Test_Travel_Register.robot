*** Settings ***
Library  Dialogs
Library  BuiltIn
Resource    ../resources/resource.robot
Suite Setup  Open Register Page
Suite Teardown    Close Browser
Test Template  Fill Register Form

**** Test Cases ***
Case1  Martin Leclair  CGI  martin.leclair@gmail.com  blueberry  blueberry


***** Keywords ***
Fill Register Form
  [Arguments]  ${nameRegister}  ${companyName}  ${email}  ${password}  ${passwordConfirmed}
  Enter Register Name  ${nameRegister}
  Enter Company Name  ${companyName}
  Enter Email Name  ${email}
  Enter Password  ${password}
  Enter Confirm Password  ${passwordConfirmed}
  Click Register
  Capture Page Screenshot




















