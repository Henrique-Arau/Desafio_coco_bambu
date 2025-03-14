*** Settings ***
Documentation        Testes de funcionalidades remover item do carrinho 

Library              RequestsLibrary


*** Variables ***
${BASE_URL}         https://dummyjson.com
&{HEADERS}          Content-Type=application/json


*** Keywords ***

Remover Item do Carrinho

    Create Session  dummyjson   ${BASE_URL}
    ${response}     DELETE    ${BASE_URL}/carts/1
    Status should Be    200     ${response}
    Log     ${response.json()}

Remover Carrinho Inexistente
    [Documentation]    Teste para verificar erro ao remover um carrinho inexistente
    Create Session    dummyjson    ${BASE_URL}

    ${RESPONSE}    DELETE On Session    dummyjson    /carts/99999    headers=&{HEADERS}
    Should Be Equal As Numbers    ${RESPONSE.status_code}    404

Remover Carrinho Sem ID
    [Documentation]    Teste para verificar erro ao tentar remover um carrinho sem fornecer ID
    Create Session    dummyjson    ${BASE_URL}

    ${RESPONSE}    DELETE On Session    dummyjson    /carts/    headers=&{HEADERS}
    Should Be Equal As Numbers    ${RESPONSE.status_code}    400