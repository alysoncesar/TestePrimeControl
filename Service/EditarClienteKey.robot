*** Settings ***
Resource    ../Resource/global.robot
Resource    ../Common/editarClientePath.robot

*** Variables ***
${NomeEditar}         Cadastro Teste Finalizado
${emailEditar}        TesteCadastroFinalizado@testado.com 
${telefoneEditar}     61998286666
*** keywords ***
 
acessar ação de edição do cliente
    Sleep    2
    Click Element    ${btnEditar}
    Sleep    1

editar dados do cliente
    editar dados input 
    Enviar imagem
    Click Button    ${btnSalvar}

editar dados input
    Input Text      ${inputEditarNome}        ${NomeEditar} 
    Input Text      ${inputEditarEmail}       ${emailEditar} 
    Input Text      ${inputEditarTelefone}    ${telefoneEditar}

Enviar imagem 
    Choose File    ${inputEditarImg}          ${imgTeste}

sistema retorna a home com alterações 
    Sleep    3
    Page Should Contain                       ${emailEditar} 