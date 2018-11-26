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


Enter First Name
    [Arguments]  ${firstName}
    Input Text  Prenom  ${firstName}

Enter Last Name
    [Arguments]  ${lastName}
    Input Text  Nom  ${lastName}

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



# Candidate Profile
Click Profile
    Click Element  ${votreProfil_LINK}

Enter Street and Number
    [Arguments]  ${streetNumber}
    Input Text  Adresse  ${streetNumber}


Enter Appartment
    [Arguments]  ${aptNumber}
    Input Text  appartement  ${aptNumber}


Enter City
    [Arguments]  ${city}
    Input Text  Ville  ${city}


Select Province
    [Arguments]  ${provinceId}
    Select From List by Value  Province  ${provinceId}


Enter Postal Code
    [Arguments]  ${postalCode}
    Input Text  CodePostal  ${postalCode}


Enter Phone Number
    [Arguments]  ${phoneNumber}
    Input Text  TelephonePrincipal  ${phoneNumber}


Select Phone Type
    [Arguments]  ${phoneType}
    Select From List by Value  TypeTelephonePrincipal  ${phoneType}


Select Financial Institution
    [Arguments]  ${selectChoice}
    Select Radio Button  MembreCaissePrincipale  ${selectChoice}
    #Select Radio Button  //*[@id="MembreCaissePrincipale"]  ${selectChoice}

Click Yes
    Click Element  //*[@id="MembreCaissePrincipale"]

Find Text
    Click Element  //*[@id="contenu"]/div[2]/div/div/div[2]/div/form/div[15]/div/fieldset/legend

Select Province From Main Financial Institution
    [Arguments]  ${selectProvince}
    Select Radio Button  ProvinceCaisseDesjardinsPrincipale  ${selectProvince}


Select Additional Caisse
    [Arguments]  ${selectChoiceSec}
    Select Radio Button  MembreCaisseSecondaire  ${selectChoiceSec}

Select Caisse Province
    [Arguments]  ${city}
    Input Text  appartement  ${city}


Enter Transit Number
    [Arguments]  ${transitNumber}
    Input Text  MembreCaissePrincipaleTransitNumber2  ${transitNumber}


Save Profile
    Click Element  ${save_BTN}


# Diversity Section

