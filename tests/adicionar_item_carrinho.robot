*** Settings ***
Documentation        Testes de adiciona itens ao carrinho para um usuário especifico

Library              RequestsLibrary
Library              Collections

Resource             ../resources/Base.resource

Test Setup           start session
Test Teardown        Take Screenshot


*** Test Cases ***
    
    Criar sessão    dummyjson    ${https://dummyjson.com/carts/add}
    ${response}     Adicionar itens ao carrinho    ${USER_ID}    ${PRODUCTS}
    Verificar resposta    ${response}





