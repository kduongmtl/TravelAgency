*** Settings ***
Library  Dialogs
Library  BuiltIn
Resource    ../resources/resource.robot
Suite Setup  Open Browser To Create Form
Test Template  Enter Data Form

**** Test Cases ***
User1  Jon  Doi  j.oh.n.c.r.a.w.f.or.d.verdun@gmail.com  j.oh.n.c.r.a.w.f.or.d.verdun@gmail.com  leCcncordia123  leCcncordia123  05/04/1986
User2  Jon  Doig  j.ohncra.w.fo.r.dverdun@gmail.com  j.ohncra.w.fo.r.dverdun@gmail.com  leCcncordia123  leCcncordia123  06/04/1987




***** Keywords ***
Enter Data Form
  [Arguments]  ${firstName}  ${lastName}  ${email}  ${emailConfirmation}  ${password}  ${password}  ${dateOfBirth}
  Enter First Name  ${firstName}
  Enter Last Name  ${lastName}
  Enter Email  ${email}
  Enter Email Confirmation  ${emailConfirmation}
  Enter Password  ${password}
  Enter Password Confirmation  ${password}
  Enter Date of Birth  ${dateOfBirth}
  Click Element  //div[@class="row"]
  Execute JavaScript  window.scrollBy(900, 900)
  Accept Consent
  Execute JavaScript  window.scrollBy(900, 900)


