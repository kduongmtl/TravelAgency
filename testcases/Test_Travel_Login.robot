*** Settings ***
Library  Dialogs
Library  BuiltIn
Resource    ../resources/resource.robot
Suite Setup  Open login Page
Suite Teardown    Close Browser
Test Template  Choose Destination City

**** Test Cases ***
Case1   Portland  London  2


***** Keywords ***
Choose Destination City
  [Arguments]  ${departureCity}  ${destinationCity}  ${flightChoice}
  Select Departure City  ${departureCity}
  Select Destination City  ${destinationCity}
  Find Flights
  #Click Element  //tr[4]/td[1]/input[@class="btn btn-small"]
  Select A Flight  ${flightChoice}































