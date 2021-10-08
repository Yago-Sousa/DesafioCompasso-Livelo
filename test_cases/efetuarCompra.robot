*** Settings ***
Resource        	${EXECDIR}/resources/resource.robot
Resource        	${EXECDIR}/resources/pageObjects/paginaCarrinho.robot
Resource        	${EXECDIR}/resources/pageObjects/paginaCheckoutLogin.robot
Resource        	${EXECDIR}/resources/pageObjects/paginaPrincipal.robot
Resource        	${EXECDIR}/resources/pageObjects/paginaProdutos.robot
Resource        	${EXECDIR}/resources/pageObjects/paginaProdutoUnico.robot

Test Setup          Abrir navegador
Test Teardown       Fechar navegador


*** Test Case ***

Cenario: Efetuar Compra Produto  

		Dado que eu esteja na tela principal do sistema
        Quando eu buscar por um produto especifico                 Wok Brinox Garlic Vermelho Antiaderente - 24cm
        E validar o resutado da pesquisa
        E selecionar no produto especifico
        E adicionar o produto no carrinho
        E conferir o preço do produto
        E clicar em fechar o pedido
        Entao devo visualizar a mensagem                            Olá! Que bom te ver por aqui! :)


