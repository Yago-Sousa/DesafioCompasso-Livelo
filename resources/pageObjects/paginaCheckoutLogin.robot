*** Settings ***
Library    SeleniumLibrary

*** Variables ***    


*** Keywords ***

Entao devo visualizar a mensagem
    [Arguments]     ${MENSAGEM_SISTEMA}
    Wait Until Page Contains        ${MENSAGEM_SISTEMA}   3s
    
    Sleep                           1s