*** Settings ***
Resource    ../Service/LogoutFinalizarKey.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

CT010 - Realizar Logout com sucesso ao clicar em “Finalizar”
    GIVEN logar conta já criada
    WHEN realizar Logout
    THEN sistema deve encaminhar a pagina de login

CT012 - Validar preenchimento “Informações do Candidato” ao clicar em “Finalizar e Enviar”
    GIVEN logar conta já criada
    WHEN acessar finalizar teste
    AND preencher dados
    THEN 