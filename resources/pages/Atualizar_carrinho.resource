*** Settings ***
Documentation        variables de atualizar carrinho 

Library              RequestsLibrary

*** Variables ***
${URL_BASE}        https://dummyjson.com/carts/1
${products}        [{'id': 1, 'quantity': 1}]