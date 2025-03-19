*** Settings ***
Documentation        Este teste remove um item do carrinho utilizando uma requisição HTTP DELETE 

Resource             ../resources/Base.resource
Library               Browser

Library              RequestsLibrary

*** Test Cases ***

Remover Item do Carrinho
    Remover Item do Carrinho