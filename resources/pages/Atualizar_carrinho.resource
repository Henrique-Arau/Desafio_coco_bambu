*** Settings ***
Documentation        variables de atualizar item do carrinho 

Library              RequestsLibrary

*** Variables ***
${URL_BASE}        https://dummyjson.com/carts/1
${products}        [{'id': 1, 'quantity': 1}]

*** Keywords ***

Atualizar Carrinho Com Sucesso
    [Documentation]    Teste para atualizar um carrinho existente com sucesso
    Create Session    minha_sessao    ${BASE_URL}

    ${PRODUCT}    Create Dictionary    id=1    quantity=5
    ${PRODUCTS}    Create List    ${PRODUCT}
    ${BODY}    Create Dictionary    products=${PRODUCTS}

    ${RESPONSE}    PUT On Session    minha_sessao    ${ENDPOINT}    json=${BODY}    headers=&{HEADERS}
    Should Be Equal As Numbers    ${RESPONSE.status_code}    200
    Log    ${RESPONSE.json()}
