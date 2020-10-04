*** Settings ***
Library  RequestsLibrary
Library  Collections


*** Variables ***
${base_url}  http://jsonplaceholder.typicode.com
${request_uri}  /photos

*** Test Cases ***
TC_COOKIES_VERIFY
    create session  mysession   ${base_url}
    ${response}=  get request  mysession  ${request_uri}

    #Status code validation
    ${status}=  convert to string  ${response.status_code}
    should be equal  ${status}  200

    #Cookies key and value validation

    log to console  ${response.cookies}
    log to console  get from list  ${response.cookies}
    #log to console  ${response.headers}


