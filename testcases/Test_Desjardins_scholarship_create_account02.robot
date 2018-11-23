*** Settings ***
Resource    ../resources/resource.robot


Suite Setup  Open Browser To Create Form
Test Template  Enter Data Form

*** Test Cases ***
User1  john  doe  j.ohnc.ra.w.f.o.rd.verdun@gmail.com  j.ohnc.ra.w.f.o.rd.verdun@gmail.com  leCcncordia123  leCcncordia123  04/04/1986




**** Keywords ***
Enter Data Form
  [Arguments]  ${prenomDt}  ${nomDt}  ${emailDt}  ${emailConfirmationDt}  ${passwordDt}  ${confirmedPasswordDt}  ${dateNaissanceDt}
  Input Text  ${prenom}  ${prenomDt}
  Input Text  ${nom}  ${nomDt}
  Input Text  ${email}  ${emailDt}
  Input Text  ${emailConfirmation}  ${emailConfirmationDt}
  Input Text  ${password}  ${passwordDt}
  Input Text  ${confirmedPassword}  ${confirmedPasswordDt}
  Input Text  ${dateNaissance}  ${dateNaissanceDt}
  Click Element  //div[@class="row"]
  Execute JavaScript  window.scrollBy(900, 900)

  Click Element  ${acceptationBoxText}
  Execute JavaScript  window.scrollBy(900, 900)
  Wait Until Element Is Visible  ${robot}
  























