*** Settings ***
Documentation            Garantir a funcionalidade das APIs do carrinho

Library                  Browser
Library                  RequestsLibrary
Library                  Collections

*** Variables ***
${BASE_URL}      https://dummyjson.com
${USER_ID}       1
${PRODUCT_1}     id=144        quantity=1
${PRODUCT_2}     id=98         quantity=4
${PRODUCTS}      ${PRODUCT_1}        ${PRODUCT_2}


*** Keywords ***

Criar sessão
    [Arguments]           ${alias}    ${url}
    Create Session        ${alias}    ${url}

Adicionar itens ao carrinho
    [Arguments]    ${user_id}           ${produtos}
    &{payload}     Create Dictionary    userId=${user_id}    products=${produtos}
    ${response}    POST On Session      dummyjson  /carts/add    json=${payload}    headers={'Content-Type': 'application/json'}
    [Return]       ${response}

Verificar resposta
    [Arguments]         ${response}
    Status Should Be    ${response}     200
    Log     ${response.json()}    console=true