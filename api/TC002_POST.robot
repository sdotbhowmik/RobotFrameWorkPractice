*** Settings ***
Library  RequestsLibrary

*** Variables ***
${BASE_URL}=    http://thetestingworldapi.com
${REQUEST_URI}=  api/studentsDetails


*** Test Cases ***
TC002_POST_STUDENTS_DETAILS
    CREATE SESSION  MYSESSION   ${BASE_URL}
    ${head}=    create dictionary  Content-Type=application/json
    ${data}=    create dictionary  first_name=Shree  middle_name=Lekha  last_name=Mitra  date_of_birth=10/10/1990

    ${RESULT}=  POST REQUEST  MYSESSION  ${REQUEST_URI}  headers=${head}  data=${data}

    ${STATUS}=  CONVERT TO STRING  ${RESULT.status_code}

    SHOULD BE EQUAL  ${STATUS}  201
