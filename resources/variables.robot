*** Variables ***
*** Variables ***
${SERVER}         blazedemo.com/index.php
${BROWSER}        Chrome
${PROFILE}        ff_profile_dir=C:\\FirefoxProfile
${DELAY}          1
${VALID USER}     demo
${VALID PASSWORD}    mode
${CREATE ACCOUNT URL}      http://${SERVER}/
${LOGIN URL}    http://${SERVER}/
${ERROR URL}      http://${SERVER}/error.html



${Login_BTN}        //a[@class='btn btn-primary']
${calendarPicker}  //span[@class="input-group-addon ico-calendrier"]
${year}  //span[@class="year"]
${acceptationBoxCheck}  //span[@class="c-indicator"]
${acceptationBox}  //input[@id="ConsentementCourriel"]
${acceptationBoxText}  //*[@id="contenu"]/div[2]/form/div[3]/div[5]/div[2]/fieldset/div/div/label/strong

${captcha}  //div[@class="recaptcha-checkbox-checkmark"]
${robot}  //*[@id="recaptcha-anchor-label"]
${suivant_BTN}  //button[@class="btn btn-primary"]
${connecter_BTN}  //button[@class="btn btn-primary"]
${deconnecter_BTN}  //a[@class="logoff menu-link-connexion"]

${connecter_LINK}  //a[@class="menu-link-connexion"]

${logo_Desjardins}  //img[@class="logoDesjardins"]


${votreProfil_LINK}  //*[@id="contenu"]/div[1]/div/div/div/div[2]/div[2]/ul/li[2]/a

${save_BTN}  //input[@class="btn btn-primary"]
${findFlights_BTN}  //input[@class="btn btn-primary"]

