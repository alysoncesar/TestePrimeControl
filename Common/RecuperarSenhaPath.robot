*** Settings ***

*** Variables ***

#COMMON
${inputEmail}           xpath=//input[@id="floatingInput"]

#LOGIN
${btnLogin}             xpath=//a[@href='/app']

#RESET DE SENHA
${btnEsqueciSenha}      xpath=//a[@href="/app/resetsenha"] 
${btnEnviar}            xpath=//button[text()="Enviar"]

${inputSenhaReset}      xpath=//input[@type='password']
${btnSubmitReset}       xpath=//button[@type="submit"]
${txtSenhaAlterada}     xpath=//*[contains(text(), 'Password changed')]
#FAKE EMAIL
${BASE_URL_FAKE_EMAIL}      https://www.invertexto.com/gerador-email-temporario
${emailFake}                xpath=//input[@id='email-input']
${msgPrime}                 xpath=(//tbody/tr)[1]
${linkReset}                xpath=//a[contains(@href, 'resetPassword')]
#ALTERAR SENHA
${emailAlterarSenha}    ${EMPTY}    
${senhaAlterarSenha}    193746
