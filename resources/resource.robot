*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Resource          variables.robot




*** Keywords ***
Open Browser To Create Form
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Click Element  ${Login_BTN}

Open Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}



#Login Page
Select Departure City
    [Arguments]  ${departureCity}
    Select From List by Value  fromPort  ${departureCity}


Select Destination City
    [Arguments]  ${destinationCity}
    Select From List by Value  toPort  ${destinationCity}

Find Flights
    Click Element  ${findFlights_BTN}


Select A Flight
    [Arguments]  ${flightChoice}
    Click Element  //tr[${flightChoice}]/td[1]/input[@class="btn btn-small"]


#Fill Form

Enter Full Name
    [Arguments]  ${fullName}
    Input Text  inputName  ${fullName}

Enter Address
    [Arguments]  ${address}
    Input Text  address  ${address}

Enter City
    [Arguments]  ${city}
    Input Text    city  ${city}

Enter State
    [Arguments]  ${state}
    Input Text  state  ${state}

Enter Zip Code
    [Arguments]  ${zipCode}
    Input Text  zipCode  ${zipCode}

Select Card Type
    [Arguments]  ${cardType}
    Select From List by Value  cardType  ${cardType}


Enter Credit Card Number
    [Arguments]  ${creditCardNumber}
    Input Text  creditCardNumber  ${creditCardNumber}


Enter Credit Card Month
    [Arguments]  ${creditCardMonth}
    Input Text  creditCardMonth  ${creditCardMonth}


Enter Credit Card Year
    [Arguments]  ${creditCardYear}
    Input Text  creditCardYear  ${creditCardYear}


Enter Name On Card
    [Arguments]  ${nameOnCard}
    Input Text  nameOnCard  ${nameOnCard}

Purchase Flight
    Click Element  //input[@class="btn btn-primary"]












#Enter Email
#    [Arguments]  ${email}
#    Input Text  Email  ${email}

Enter Email Confirmation
    [Arguments]  ${emailConfirmation}
    Input Text  EmailConfirmation  ${emailConfirmation}

Enter Password
    [Arguments]  ${password}
    Input Text  Password  ${password}

Enter Password Confirmation
    [Arguments]  ${password}
    Input Text  ConfirmPassword  ${password}

Enter Date of Birth
    [Arguments]  ${dateOfBirth}
    Input Text  DateNaissance  ${dateOfBirth}

Accept Consent
    Click Element  ${acceptationBoxText}


Next Step
    Click Element  ${suivant_BTN}

Connect
    Click Element  ${connecter_BTN}

Reconnect
    Click Element  ${connecter_LINK}

Disconnect
    Click Element  ${deconnecter_BTN}


