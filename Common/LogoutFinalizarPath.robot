*** Settings ***
Resource    ../Resource/global.robot

*** Variables ***


#LOGOUT
${btnFinalizar}                 xpath=//a[@href="/app/home"]
${btnLogout}                    xpath=//button[text()="Logout"]

#ENVIAR
${btnEnviar}                    xpath=//button[text()="Enviar"]

${inputNomeEnviar}              xpath=//input[@id='nome']
${inputTelefoneEnviar}          xpath=//input[@id='telefone']
${inputEmailEnviar}             xpath=//input[@id='email']
${inputLinkGitEnviar}           xpath=//input[@id='githubLink']
${inputNomeRecruiterEnviar}     xpath=//input[@id='nomeRecrutador']
${btnSalvar}                    xpath=//button[text()='Salvar']