*** Settings ***
Library  Dialogs
Library  BuiltIn
Resource    ../resources/resource.robot
Suite Setup  Open login Page
Test Template  Enter Login Form
Suite Teardown    Close Browser

**** Test Cases ***
#User1   t.es.t.us.e.rdes.jardintoursud@gmail.com    bourseEtude4k  7503 Rue St Denis  Montreal  1  H2R 2E7  5144821925  2  Oui  1  30500
User1   t.es.t.us.e.rdes.jardintoursud@gmail.com    bourseEtude4k  7503 Rue St Denis  Montreal  1  H2R 2E7  5145251212  2
#User2   te.st.us.erde.s.j.ardintoursud@gmail.com    bourseEtude4k
#User3   t.es.tu.se.rd.e.s.j.ardintoursud@gmail.com    bourseEtude4k


***** Keywords ***
Enter Login Form
  #[Arguments]  ${email}  ${password}  ${streetNumber}  ${city}  ${provinceId}  ${postalCode}  ${phoneNumber}  ${phoneType}  ${selectChoice}  ${selectProvince}  ${selectChoiceSec}  ${transitNumber}
  [Arguments]  ${email}  ${password}  ${streetNumber}  ${city}  ${provinceId}  ${postalCode}  ${phoneNumber}  ${phoneType}
  Enter Email  ${email}
  Enter Password  ${password}
  Connect
  Click Profile
  Enter Street and Number  ${streetNumber}
  Enter City  ${city}
  Execute JavaScript  window.scrollBy(900, 900)
  Select Province  ${provinceId}
  Enter Postal Code  ${postalCode}
  Enter Phone Number  ${phoneNumber}
  Select Phone Type  ${phoneType}
  Execute JavaScript  window.scrollBy(900, 900)
  #Select Financial Institution  ${selectChoice}
  #Click Yes
  #Select Province From Main Financial Institution  ${selectProvince}
  #Select Additional Caisse  ${selectChoiceSec}
  #Enter Transit Number  ${transitNumber}
  Save Profile
  Disconnect
  #Reconnect
































