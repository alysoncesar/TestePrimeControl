*** Settings ***
Resource    ../Service/CriarContaLoginKey.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

CT001 - Criar uma nova Conta com sucesso
    GIVEN acessou pagina principal
    WHEN criar conta nova
    THEN sistema deve encaminhar a pagina de login

CT002 - Validar criação de uma conta com Email já cadastrado
    GIVEN acessou pagina principal
    WHEN criar conta nova com email já cadastrado
    THEN sistema deve exibir mensagem de email já utilizado

CT003 - Realizar Login com sucesso
    GIVEN acessou pagina principal
    WHEN logar conta já criada
    THEN sistema deve encaminhar a pagina logada 

CT004 - Validar Login com senha inválida
    GIVEN acessou pagina principal
    WHEN logar conta com senha inválida
    THEN sitema deve exibir mensagem de senha incorreta   

CT011 - Recuperar senha de acesso
    GIVEN acessar menu esqueci minha senha
    WHEN enviar redefinição de email
    AND acessar link de redefinição
    AND redefinir senha
    THEN sistema deve alterar senha do usuário
