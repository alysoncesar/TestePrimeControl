*** Settings ***
Resource    ../Resource/global.robot
Resource    ../Common/LogoutFinalizarPath.robot 

*** Variables ***
${nomeEnviar}         Alyson César
${telefoneEnviar}     61998280704
${emailEnviar}        alysoncesar99@gmail.com  
${gitEnviar}          https://github.com/alysoncesar/TestePrimeControl
${recruiterEnviar}    Livia


*** keywords ***

realizar Logout
    Sleep    1
    Click Element   ${btnFinalizar}
    Sleep    1
    Click button    ${btnLogout}

sistema deve encaminhar a pagina de login
    Sleep    1
    Page Should Contain Button    ${btnAcessar}
    Page Should Contain Element   ${txtLogin}

acessar finalizar teste
    Sleep    1
    Click Element    ${btnFinalizar}
    Sleep    1
    Click Button     ${btnEnviar}

preencher dados
    Input Text      ${inputNomeEnviar}                ${nomeEnviar}
    Input Text      ${inputTelefoneEnviar}            ${telefoneEnviar} 
    Input Text      ${inputEmailEnviar}               ${emailEnviar} 
    Input Text      ${inputLinkGitEnviar}             ${gitEnviar} 
    Input Text      ${inputNomeRecruiterEnviar}       ${recruiterEnviar}
    Click Button    ${btnSalvar}

sistema deve salvar dados
    Page Should Contain     ${tituloHome}