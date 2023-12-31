*** Settings ***
Resource    ../Resource/global.robot
*** keywords ***

acessou pagina principal
    Sleep    1
    Page Should Contain   ${Saudacao}

criar conta nova
    Click Element         ${btnNovaConta}   
    input text            ${inputEmail}     ${emailCriarConta}
    Input Text            ${inputSenha}     ${senhaNovaConta}
    Click Button          ${btnCriarConta}

criar conta nova com email já cadastrado
    click Element         ${btnNovaConta}
    input text            ${inputEmail}     ${emailContaCriada}
    Input Text            ${inputSenha}     ${senhaContaCriada}
    Click Button          ${btnCriarConta}

logar conta com senha inválida
    click Element        ${btnLogin}
    input text           ${inputEmail}      ${emailContaCriada}
    Input Text           ${inputSenha}      ${senhaNovaConta}
    Click Button         ${btnAcessar}

sistema deve encaminhar a pagina logada
    Sleep    2
    Page Should Contain Element              ${txtHome}

sistema deve exibir mensagem de email já utilizado
    Sleep    2 
    Page Should Contain Element              ${txtEmailUtilizado}

sistema deve encaminhar a pagina de login
    Sleep    2
    Page Should Contain Button               ${btnAcessar}
    Page Should Contain Element              ${txtLogin}
      
sitema deve exibir mensagem de senha incorreta   
    Sleep    2
    Page Should Contain Element              ${txtSenhaIncorreta}
