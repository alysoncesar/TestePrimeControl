*** Settings ***
Resource    ../Service/RecuperarSenhaKey.robot

*** Test Cases ***

CT011 - Recuperar senha de acesso
    GIVEN acessar menu esqueci minha senha
    WHEN enviar redefinição de senha
    AND acessar link de redefinição
    AND redefinir senha
    THEN sistema deve alterar senha do usuário 
