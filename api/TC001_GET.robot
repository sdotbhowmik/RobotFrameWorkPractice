*** Settings ***
Library  RequestsLibrary

*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com
${REQUEST_URI}=  api/studentsDetails


*** Test Cases ***
TC_001_GET_STUDENT_DETAILS
    CREATE SESSION  MYSESSION   ${BASE_URL}

    ${RESPONSE}=    GET REQUEST  MYSESSION  ${REQUEST_URI}

    ${RESULT}=  CONVERT TO STRING  ${RESPONSE.status_code}

    SHOULD BE EQUAL  ${RESULT}  200

