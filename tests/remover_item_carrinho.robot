*** Settings ***
Documentation        Este teste remove um item do carrinho utilizando uma requisição HTTP DELETE 

Library              RequestsLibrary
Resource             ../resources/Base.resource


*** Test Cases ***

Remover Item do Carrinho

    Create Session    dummyjson    ${BASE_URL}
    ${response}  DELETE   /carts/${CART_ID}
    Status Should Be    200
    Log    ${response.json()}