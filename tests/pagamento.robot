*** Settings ***

Documentation        Cenários de testes de Voucher

Resource             ../resources/Base.resource

Test Setup           start session
Test Teardown        Take Screenshot



*** Test Cases ***

Validar erro ao preencher forma de pagamento

     Go to voucher page
     Verify welcome message
