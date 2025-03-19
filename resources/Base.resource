*** Settings ***
Documentation        Arquivo principal do projeto Robot

Library        Browser

Resource        pages/Pagamento.resource
Resource        pages/Adicionar_carrinho.resource
Resource        pages/Atualizar_carrinho.resource
Resource        pages/Remover_carrinho.resource
Resource        pages/Variables/Variable.resource



*** Keywords ***

start session

    New Browser  browser=chromium    headless=False
    New Page     https://app-hom.cocobambu.com/delivery
