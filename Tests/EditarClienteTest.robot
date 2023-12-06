*** Settings ***
Resource    ../Service/EditarClienteKey.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

CT007 - Editar Cliente através do botão na listagem de clientes
   GIVEN logar conta já criada
   WHEN acessar ação de edição do cliente
   AND editar dados do cliente
   THEN sistema retorna a home com alterações 
