*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_URL}                 https://www.livelo.com.br/
${INPUT_BUSCAR_PRODUTO}     id=input-search
${BOTAO_BUSCAR_PRODUTO}     id=span-searchIcon
${BOTAO_AUTORIZAR_COOKIES}  id=btn-authorizeCoookies


*** Keywords ***

Dado que eu esteja na tela principal do sistema
    Go To                               ${HOME_URL}
    Wait Until Page Contains Element    ${BOTAO_AUTORIZAR_COOKIES}    3s
    Click Element                       ${BOTAO_AUTORIZAR_COOKIES}
    Title Should Be                     Livelo | Programa de pontos que você troca por recompensas

Quando eu buscar por um produto especifico
    [Arguments]                         ${PRODUTO}
    Set Test Variable                   ${PRODUTO}
    Wait Until Element Is Visible       ${INPUT_BUSCAR_PRODUTO}         3s
    Input Text                          ${INPUT_BUSCAR_PRODUTO}         ${PRODUTO}
    Sleep  5s
    Wait Until Element Is Visible       ${BOTAO_BUSCAR_PRODUTO}         3s
    Click Element                       ${BOTAO_BUSCAR_PRODUTO}
    