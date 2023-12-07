*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource          ../Common/CriarContaLoginPath.robot
Library           OperatingSystem
Library    String

*** Variables ***
${BROWSER}                 Chrome
${BASE_URL}                https://challenge.primecontrol.com.br/

#LOGAR CONTA
${emailContaCriada}        alysoncesar99@gmail.com
${senhaContaCriada}        193746

#CRIAR CONTA
${emailCriarConta}=        ${EMPTY}    
${senhaNovaConta}          123456789

#DADOS CLIENTE CADASTRO
${NomeCompleto}            Alyson César Leles Coelho
${Telefone}                61998280704
${Email}                   alysoncesar99@gmail.com
${CEP}                     71996-350
${NumeroResidencia}        05
${Endereco}                QS 05 Praça 310
${Complemento}             A
${pais}                    br
${imgTeste}                ${EXECDIR}\\feature\\carros.png

*** Keywords ***
Abrir Navegador
    Open Browser           ${BASE_URL}    ${BROWSER}    alias=prime
    randomizar email
    Maximize Browser Window
    
Fechar Navegador
    Close Browser  

logar conta já criada
    click Element           ${btnLogin}
    input text              ${inputEmail}    ${emailContaCriada}
    Input Text              ${inputSenha}    ${senhaContaCriada}
    Click Button            ${btnAcessar}

randomizar email
    ${randomizarString}=    Generate Random String    8
    ${emailRandom}=         Set Variable    ${randomizarString}@teste.com
    Set Global Variable     ${emailCriarConta}    ${emailRandom}
