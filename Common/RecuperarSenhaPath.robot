*** Settings ***

*** Variables ***

#COMMON
${inputEmail}           xpath=//input[@id="floatingInput"]

#LOGIN
${btnLogin}             xpath=//a[@href='/app']

#RESET DE SENHA
${btnEsqueciSenha}      xpath=//a[@href="/app/resetsenha"] 
${btnEnviar}            xpath=//button[text()="Enviar"]

#FAKE EMAIL
${BASE_URL_FAKE_EMAIL}      https://www.invertexto.com/gerador-email-temporario
${emailFake}                xpath=//input[@id='email-input']

#ALTERAR SENHA
${emailAlterarSenha}    ${EMPTY}    
${senhaAlterarSenha}    193746
