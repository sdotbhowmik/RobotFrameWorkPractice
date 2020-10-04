*** Settings ***
Library  SeleniumLibrary
Library    DataDriver   file=../TestData/submitdata.csv  sheet_name=Sheet1
Suite Setup  open browser instance
Suite Teardown  close browser instance
Test Template  Submit TextBox

*** Variables ***
${BROWSER}  gc

*** Test Cases ***
Data DrivenTest Demo    ${username}  ${email}  ${current_address}  ${permanent_address}
    #Submit TextBox
    page should contain  Name:

*** Keywords ***
open browser instance
    Open Browser    https://demoqa.com/text-box    ${BROWSER}
    maximize browser window
    set browser implicit wait  10

close browser instance
    close browser

Submit TextBox
    [Arguments]  ${username}  ${email}  ${current_address}  ${permanent_address}

    Input Text    //input[@id="userName"]  ${username}
    Input Text    //input[@id="userEmail"]  ${email}
    Input Text    //textarea[@id="currentAddress"]  ${current_address}
    Input Text    //textarea[@id="permanentAddress"]  ${permanent_address}

    sleep  3
    click element   //button[@id="submit"]