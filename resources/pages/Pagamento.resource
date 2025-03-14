*** Settings ***
Documentation        Ações e elementos da pagina de voucher

Library              Browser

*** Keywords ***

Go to voucher page
    
    Go to     https://app-hom.cocobambu.com/delivery

Submit login form
    
    [Arguments]        ${email}        ${password}

    Fill Text    css=input[name=email]         ${email}
    Fill Text    css=input[name=password]     ${password}

    Click    css=button >> text=Entrar


