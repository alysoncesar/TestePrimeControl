*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource          ../Common/CriarContaLoginPath.robot
Library           OperatingSystem

*** Variables ***
${BROWSER}        Chrome
${BASE_URL}       https://challenge.primecontrol.com.br/

#CRIAR CONTA
${emailCriarConta}=    testealyson123@gmail.com    
${senhaNovaConta}    123456789

#LOGAR CONTA
${emailContaCriada}    alysoncesar99@gmail.com
${senhaContaCriada}    193746


#DADOS CLIENTE CADASTRO
${NomeCompleto}            Alyson César Leles Coelho
${Telefone}                61998280704
${Email}                   alysoncesar99@gmail.com
${CEP}                     71996-350
${NumeroResidencia}        05
${Endereco}                QS 05 Praça 310
${Complemento}             A
${pais}                    br

*** Keywords ***
Abrir Navegador
    Open Browser    ${BASE_URL}    ${BROWSER}    alias=prime
    Maximize Browser Window
    
Fechar Navegador
    Close Browser  

logar conta já criada
    click Element    ${btnLogin}
    input text      ${inputEmail}    ${emailContaCriada}
    Input Text      ${inputSenha}    ${senhaContaCriada}
    Click Button    ${btnAcessar}
