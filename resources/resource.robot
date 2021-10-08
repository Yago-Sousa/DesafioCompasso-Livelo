*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}                          chrome

*** Keywords ***

Abrir navegador
    Open Browser   about:blank   ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

