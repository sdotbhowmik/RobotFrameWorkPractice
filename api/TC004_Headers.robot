*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}  http://jsonplaceholder.typicode.com
${request_uri}  /photos

*** Test Cases ***
TC_Headers_Verify
    create session  mysession   ${base_url}

    ${response}=    get request  mysession  ${request_uri}

    #Verify header data
    ${header_key_server}  get from dictionary  ${response.headers}  Server
    #log to console  ${header_key_server}

    should be equal  ${header_key_server}  cloudflare

    ${header_key_Content-Encoding}  get from dictionary  ${response.headers}  Content-Encoding
    #log to console  ${header_key_Content-Encoding}

    should be equal  ${header_key_Content-Encoding}  gzip
