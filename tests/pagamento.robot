*** Settings ***

Documentation        Cenários de testes de Voucher

Resource             ../resources/Base.resource
Library               Browser

Test Setup           start session
Test Teardown        Take Screenshot



*** Test Cases ***

Validar erro ao preencher forma de pagamento

     Go to voucher page
