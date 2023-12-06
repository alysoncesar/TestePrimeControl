*** Settings ***
Resource    ../Resource/global.robot
Resource    ../Common/LogoutFinalizarPath.robot
Resource    

*** Variables ***

*** keywords ***

realizar Logout
    Sleep    2
    Click Element   ${btnFinalizar}
    Sleep    2
    Click button    ${btnLogout}

sistema deve encaminhar a pagina de login
    Sleep    2
    Page Should Contain Button    ${btnAcessar}
    Page Should Contain Element   ${txtLogin}

acessar finalizar teste
    Sleep    2
    Click Element    ${btnFinalizar}
    Sleep    2
    Click Button    ${btnEnviar}

preencher dados
    Input Text      ${inputNomeEnviar}          Alyson César
    Input Text      ${inputTelefoneEnviar}        61998280704
    Input Text      ${inputEmailEnviar}           alysoncesar99@gmail.com  
    Input Text      ${inputLinkGitEnviar}            teste
    Input Text      ${inputNomeRecruiterEnviar}        Livia
    Sleep    2