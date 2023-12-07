*** Settings ***
Resource    ../Service/CadastroClienteKey.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases *** 

CT005 - Realizar Cadastro de Clientes com sucesso na aba Perfil
    GIVEN logar conta já criada
    WHEN cadastrar cliente de forma válida
    THEN sistema exibe lista de cliente com o cadastrado


CT006 - Validar Pesquisa de Cliente recém cadastrado e exibição dos dados em tela
    GIVEN logar conta já criada
    WHEN pesquisar por cliente já cadastrado
    THEN sistema deve exibir dados cadastrados 

CT009 - Validar preenchimento de campos obrigatórios na aba Perfil
    GIVEN logar conta já criada
    WHEN cadastrar cliente faltando dados
    THEN sistema não libera botão "Salvar"