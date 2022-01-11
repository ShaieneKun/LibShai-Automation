*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${INDEX URL}    http://localhost:8000
${BROWSER}      Firefox
${BRANDING}     Minael

*** Test Cases ***
Website name is correct
    Open Browser    ${INDEX URL}    ${BROWSER}
    Element Should Contain    tag:a    ${BRANDING}
    [Teardown]    Close Browser