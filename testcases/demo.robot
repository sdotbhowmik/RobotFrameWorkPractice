*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://account.samsung.com/membership/auth/sign-in
${BROWSER}  chrome


*** Test Cases ***
Login Samsung Accout
    Open Browser    ${url}  ${BROWSER}
    maximize browser window
    set selenium speed  2
    log to console  Test Message
    Input Text    //input[@id="iptLgnPlnID"]    subrata@yahoo.com
    Input Text    //input[@id="iptLgnPlnPD"]    Shuvo@0188()
    click element   //label[@for="remIdChkYN"]
    click element  /html/body/div[1]/main/div/div/div[2]/div/form/fieldset/div[6]/div
    wait until element is visible  Sign Out
    close browser

*** Keywords ***


