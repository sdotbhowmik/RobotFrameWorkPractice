#*** Test Cases ***

#For Loop1
#    : For    ${i}  IN   1   2   3   4   5   6   7   8   9   10
#    \   log to console  ${i}

#For loop2
#    ${lists}    create list  12 13 14 15 16 17 18 19 20
#    : For   ${i}    IN  ${lists}
#    \   log to console  ${i}

#For loop3
#    : For   ${i}  IN  Jhon Devid Smith Fernadis
#    \   log to console  ${i}

#For loop4
#    @{my_list}  create list  Saterday Sunday Monday Tusesday Friday
#    : For   ${var}    IN  @{list}
#    \   log to console  ${var}
#    exit for loop if    ${var} == "Monday"


*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
For loop in new libaray
    [Documentation]  This is sample of documentiaon created test purpose
    [Tags]  Learning For Loop
    FOR   ${i}  IN  Jhon Devid Smith Fernadis

    log to console  ${i}

    END


