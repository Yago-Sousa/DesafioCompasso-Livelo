*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PRODUTO_ESPECIFICO}      xpath=//div[@class='line-trunc'][contains(string(),'Wok Brinox Garlic Vermelho Antiaderente - 24cm')]


*** Keywords ***

E validar o resutado da pesquisa
    Wait Until Page Contains            ${PRODUTO}       3s
    Page Should Contain                 ${PRODUTO}

E selecionar no produto especifico
    Wait Until Page Contains Element    ${PRODUTO_ESPECIFICO}     3s
    Click Element                       ${PRODUTO_ESPECIFICO}