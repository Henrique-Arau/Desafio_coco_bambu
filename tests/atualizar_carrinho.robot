*** Settings ***
Documentation         Este teste atualiza a quantidade de um item no carrinho utilizando uma requisição HTTP PUT 

Library              RequestsLibrary

Resource             ../resources/Base.resource


*** Test Cases ***

Atualizar Item no Carrinho
    Create Session    carrinho     ${URL_BASE}
    ${headers}=       Create Dictionary    Content-Type=application/json
    ${body}=          Create Dictionary    merge=${True}    products=${products}
    ${response}=      PUT On Session               carrinho  /    headers=${headers}      json=${body}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}

Verificar erro ao atualizar um carrinho inexistente
    Atualizar Carrinho Inexistente

Verificar erro ao atualizar um carrinho sem produtos
    Atualizar Carrinho Sem Produtos

Verificar erro ao atualizar um carrinho com produto inexistente
    Atualizar Carrinho Com Produto Inexistente

Verificar erro ao atualizar um carrinho com quantidade zero
    Atualizar Carrinho Com Quantidade Inválida