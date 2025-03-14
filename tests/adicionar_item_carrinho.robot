*** Settings ***
Documentation        Testes de adiciona itens ao carrinho para um usuário especifico

Library              RequestsLibrary
Library              Collections

Resource             ../resources/Base.resource


*** Test Cases ***
Adicionar itens ao carrinho
    Create Session     dummyjson     ${BASE_URL}
    ${response}      Adicionar itens ao carrinho      ${USER_ID}    ${PRODUCTS}
    Verificar resposta    ${response}





