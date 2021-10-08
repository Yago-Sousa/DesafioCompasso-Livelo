*** Settings ***
Library    SeleniumLibrary

*** Variables ***    
${BOTAO_FECHAR_CARRINHO}        id=ctaCheckout
${TOTAL_CARRINHO}               id=cc-cart-total

*** Keywords ***

E conferir o preço do produto
    Wait Until Page Contains                    Seu carrinho   3s
    Wait Until Element Is Visible               ${TOTAL_CARRINHO}        3s
    Page Should Contain                         2.300 pts

E clicar em fechar o pedido
    Wait Until Element Is Visible               ${BOTAO_FECHAR_CARRINHO}     3s
    Click Button                                ${BOTAO_FECHAR_CARRINHO}