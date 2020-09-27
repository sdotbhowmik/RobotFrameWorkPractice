*** Settings ***
Library     RequestsLibrary
Library     Collection
Library     JSONLibrary
Library     SeleniumLibrary


*** Variables ***
${base_url}     https://certtransaction.elementexpress.com/
${token}        "Bearer E4F284BFADA11D01A52508ED7B92FFD7EE0905659F5DED06A4B73FC7739B48A287648801"


*** Test Cases ***
Post Demo
    create session  mysession   ${base_url}
    ${head}     create dictionary   Authorization=${token}  Content-Type=application/json
    ${data}     create dictionary
    Open Browser

*** Keywords ***
