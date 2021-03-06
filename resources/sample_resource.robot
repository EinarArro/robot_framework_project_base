*** Settings ***
Documentation     A resource file containing WiKi home page specific keywords.
...
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Resource          common_resource.robot


*** Variables ***
#************************** Common Variables ******************************
${HomePage URL}              http://${Server}
${HomePage Title}            Wikipedia
${Search Text}               Robot Framework

#************************** Page Elements *********************************
${SearchInput ID}            searchInput
${SearchSubmitButton ID}     go


*** Keywords ***
Open Browser To Wiki Home Page
    [Documentation]       For Open WiKi Home Page.
    Open Browser          ${HomePage URL}             ${Browser}
    Maximize Browser Window
    Set Selenium Speed    ${Delay}
    Title Should Be       ${HomePage Title}

Search For Robot Framework
    [Documentation]       do search operation
    Input Text            ${SearchInput ID}           ${Search Text}
    Click Button          ${SearchSubmitButton ID}