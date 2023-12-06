*** Settings ***
Resource    ../Resource/global.robot
Resource    ../Common/editarClientePath.robot

*** Variables ***

*** keywords ***
 
acessar ação de edição do cliente
    Sleep    5
    Click Element    ${btnEditar}
    Sleep    2

editar dados do cliente
    editar dados input   
    Click Button    ${btnExcluirImg}
    Sleep    2
    Enviar imagem
    Click Button    ${btnSalvar}

editar dados input
    Input Text    ${inputEditarNome}    Cadastro Teste Finalizado
    Input Text    ${inputEditarEmail}    TesteCadastroFinalizado@testado.com 
    Input Text    ${inputEditarTelefone}    61998286666

Enviar imagem 
    Choose File    ${inputEditarImg}                  C:\\Users\\Alysson\\Desktop\\TestePrimeControl\\mcQUEEN.png

sistema retorna a home com alterações 
    Sleep    5
    Page Should Contain    TesteCadastroFinalizado@testado.com 