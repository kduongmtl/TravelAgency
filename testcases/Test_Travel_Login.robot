*** Settings ***
Library  Dialogs
Library  BuiltIn
Resource    ../resources/resource.robot
Suite Setup  Open login Page
Suite Teardown    Close Browser
Test Template  Choose Destination City

**** Test Cases ***
Case1   Portland  London


***** Keywords ***
Choose Destination City
  [Arguments]  ${departureCity}  ${destinationCity}
  Select Departure City  ${departureCity}
  Select Departure City  ${destinationCity}





























