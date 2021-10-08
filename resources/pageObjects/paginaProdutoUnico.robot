*** Settings ***
Library    SeleniumLibrary

*** Variables ***    
${BOTAO_ADICIONAR_CARRINHO}             id=cc-prodDetails-addToCart
${PRECO_PRODUTO}                        xpath=(//div[@class='container-price-points__row']//span[@class='container-price-points__sale_price'])[1]
${BOTAO_NAO_QUERO_DESCONTO}             id=cc-prodDetails-refusePriceClubeDiscount
${ID_PRODUTO}                           id=span-productId

*** Keywords ***

E adicionar o produto no carrinho
    Wait Until Page Contains Element        ${ID_PRODUTO}      3s
    Page Should Contain                     LVL192024
    Wait Until Element Is Visible           ${BOTAO_ADICIONAR_CARRINHO}     3s
    Click Element                           ${BOTAO_ADICIONAR_CARRINHO}   
    Wait Until Element Is Visible           ${BOTAO_NAO_QUERO_DESCONTO}     3s
    Click Element                           ${BOTAO_NAO_QUERO_DESCONTO}  
