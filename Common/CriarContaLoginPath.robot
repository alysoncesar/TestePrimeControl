*** Settings ***
Resource    ../Resource/global.robot

*** Variables ***

#COMMON
${inputEmail}           xpath=//input[@id="floatingInput"]
${inputSenha}           xpath=//input[@id="floatingPassword"]

#INICIO
${saudacao}             Estamos ansiosos para ver seu trabalho em ação!

#CRIAR CONTA
${btnNovaConta}         xpath=//a[@href='/app/novaconta']
${btnCriarConta}        xpath=//button[text()="Criar conta"]
${txtEmailUtilizado}    xpath=//div[text()="Esse email já está em uso por outra conta"]

#LOGIN
${btnLogin}             xpath=//a[@href='/app']
${txtLogin}             xpath=//h1[text()="Login"]
${btnAcessar}           xpath=//button[text()="Acessar"]
${txtHome}              xpath=//h1[text()="Gestão de Clientes"]
${txtSenhaIncorreta}    xpath=//div[text()="E-mail ou senha inválida."] 

