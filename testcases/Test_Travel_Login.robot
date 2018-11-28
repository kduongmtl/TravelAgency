*** Settings ***
Library  Dialogs
Library  BuiltIn
Resource    ../resources/resource.robot
Suite Setup  Open login Page
Suite Teardown    Close Browser
Test Template  Choose Destination City

**** Test Cases ***
Case1   Portland  London  2  Martin Leclair  777 Luck  L.A.  CA  90210  visa  4111111111111111  08  2027  Martin Leclair


***** Keywords ***
Choose Destination City
  [Arguments]  ${departureCity}  ${destinationCity}  ${flightChoice}  ${fullName}  ${address}  ${city}  ${state}  ${zipCode}  ${cardType}  ${creditCardNumber}  ${creditCardMonth}  ${creditCardYear}  ${nameOnCard}
  Select Departure City  ${departureCity}
  Select Destination City  ${destinationCity}
  Find Flights
  #Click Element  //tr[4]/td[1]/input[@class="btn btn-small"]
  Page Should Contain   Flights from Portland to London
  Select A Flight  ${flightChoice}
  Enter Full Name  ${fullName}
  Enter Address  ${address}
  Enter City  ${city}
  Enter State  ${state}
  Enter Zip Code  ${zipCode}
  Select Card Type  ${cardType}
  Enter Credit Card Number  ${creditCardNumber}
  Enter Credit Card Month  ${creditCardMonth}
  Enter Credit Card Year  ${creditCardYear}
  Enter Name On Card  ${nameOnCard}
  Purchase Flight
  Capture Page Screenshot

































