*** Settings ***
Documentation        Arquivo principal do projeto Robot

Library        Browser


Resource        pages/Welcome.resource
Resource        pages/Pagamento.resource
Resource        pages/Api_carrinho.resource

Resource        pages/components/Toast.resource
Resource        pages/components/BoxNotice.resource


*** Keywords ***

start session

    New Browser  browser=chromium    headless=False
    New Page     https://app-hom.cocobambu.com/delivery
