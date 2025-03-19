*** Settings ***
Documentation            Garantir a funcionalidade das APIs do adicionar item do carrinho

Library                  RequestsLibrary

*** Variables ***
${BASE_URL}      https://dummyjson.com
${ENDPOINT}      /carts/add 
&{HEADERS}       Content-Type=application/json

*** Keywords ***

Criar sessão

    Create Session        dummyjson     ${BASE_URL}

Enviar Requisição POST
    ${PRODUCT}      Create Dictionary      id=1    quantity=2
    ${PRODUCTS}     Create List            ${PRODUCT}
    ${BODY}         Create Dictionary      userId=1      products=${PRODUCTS}
    ${RESPONSE}     POST On Session        dummyjson   ${ENDPOINT}      json=${BODY}     headers=&{HEADERS}
    Set Suite Variable  ${response}

Verificar Resposta
    Status should Be    201
    Log     ${response.json()}

#Erro encontrado afirmando que a api pode adicionar produto com quantidade zero
Adicionar Produto Com Quantidade Zero
    [Documentation]    Teste para validar que quantidade zero não é aceita
    Create Session    dummyjson    ${BASE_URL}

    ${PRODUCT}     Create Dictionary    id=1    quantity=0
    ${PRODUCTS}    Create List    ${PRODUCT}
    ${BODY}        Create Dictionary    userId=1    products=${PRODUCTS}

    ${RESPONSE}    POST On Session    dummyjson    ${ENDPOINT}    json=${BODY}    headers=&{HEADERS}
    Should Be Equal As Numbers    ${RESPONSE.status_code}    201


#Erro encontrado onde mostra que a api pode adicionar um produto invalido
Adicionar Produto Inexistente
    [Documentation]    Teste para validar que um produto inválido não pode ser adicionado
    Create Session    dummyjson    ${BASE_URL}

    ${PRODUCT}     Create Dictionary     id=dfgfdg~~    quantity=2
    ${PRODUCTS}    Create List    ${PRODUCT}
    ${BODY}        Create Dictionary        userId=1    products=${PRODUCTS}

    ${RESPONSE}    POST On Session    dummyjson    ${ENDPOINT}    json=${BODY}    headers=&{HEADERS}
    Set Suite Variable  ${response}
    Status should Be    201
    Log     ${response.json()}