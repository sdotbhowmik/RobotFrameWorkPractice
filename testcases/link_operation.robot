*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Links Count
    open browser  https://www.omnicard.com/cards/balance   gc
    ${link_count}   get element count  xpath://a
    log to console  ${link_count}

    : FOR   ${i}    IN RANGE    1  ${link_count}
    \   log to console  ${i}
    \   ${LinkText}=    get text  xpath:(//a)[${i}]
    \   log to console  ${LinkText}