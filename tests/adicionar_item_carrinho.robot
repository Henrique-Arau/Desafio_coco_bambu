*** Settings ***
Documentation        Testes de adiciona itens ao carrinho para um usuário especifico

Library              RequestsLibrary

Resource             ../resources/Base.resource


*** Test Cases ***
Adicionar itens ao carrinho
    Criar sessão
    Enviar Requisição POST
    Verificar Resposta

Quantidade de produto zero
    Adicionar Produto Com Quantidade Zero

Adicionar produto invalido
    Adicionar Produto Inexistente







