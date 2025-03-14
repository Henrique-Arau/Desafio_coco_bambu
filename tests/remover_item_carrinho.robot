*** Settings ***
Documentation        Este teste remove um item do carrinho utilizando uma requisição HTTP DELETE 

Resource             ../resources/Base.resource
Library               Browser

*** Test Cases ***

Remover Item do Carrinho
    Remover Item do Carrinho

verificar erro ao remover um carrinho inexistente
    Remover Carrinho Inexistente

Remover um carrinho sem fornecer ID
    Remover Carrinho Sem ID