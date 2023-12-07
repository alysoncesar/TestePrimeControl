*** Settings ***
Resource    ../Resource/global.robot
Resource    ../Common/RecuperarSenhaPath.robot

*** keywords ***

criar email temporario
    Open Browser    ${BASE_URL_FAKE_EMAIL}    ${BROWSER}              alias=email
    Sleep    2
    ${value}        Get Element Attribute     ${emailFake}            value
    Set Global Variable                       ${emailAlterarSenha}    ${value}

criar conta com fake email
    Abrir Navegador
    Click Element   ${btnNovaConta}   
    input text      ${inputEmail}             ${emailAlterarSenha}
    Input Text      ${inputSenha}             ${senhaAlterarSenha}
    Click Button    ${btnCriarConta}
    
acessar menu esqueci minha senha
    criar email temporario
    criar conta com fake email
    Sleep    2
    Click Element    ${btnEsqueciSenha}

enviar redefinição de senha
    Input Text       ${inputEmail}             ${emailAlterarSenha} 
    Sleep    1
    Click Button    ${btnEnviar}

acessar link de redefinição
    Switch Browser    email
    Wait Until Page Contains Element           ${msgPrime}    timeout=30s
    Click Element      ${msgPrime}
    Sleep    2
    Click Element      ${linkReset}
      
redefinir senha
    Sleep    5
    Input Text       ${inputSenhaReset}        ${senhaAlterarSenha} 
    Click Button     ${btnSubmitReset}
    Sleep    5

sistema deve alterar senha do usuário 
    Page Should Contain Element                ${txtSenhaAlterada}
    Close All Browsers