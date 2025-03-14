*** Settings ***
Documentation        Ações e elementos da pagina de adicionar cartão

Library        Browser

*** Keywords ***
Verify welcome message

    Wait For Elements State
    ...    text=Não foi possivel cadastrar seu cartão no momento. Por favor tente novamente.     visible    5