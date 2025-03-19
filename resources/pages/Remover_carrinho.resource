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