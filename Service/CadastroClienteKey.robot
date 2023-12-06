*** Settings ***
Resource    ../Resource/global.robot
Resource    ../Common/CadastroClientePath.robot

*** Variables ***

*** keywords ***


cadastrar cliente de forma válida
    Sleep    3
    Click element    ${cadastrarClienteForm}
    Preencher form text
    Enviar imagem
    preencher select
    preencher radio
    preencher checkbox
    Click Button    ${btnSalvarCliente} 

cadastrar cliente com email inválido
    Sleep    3
    Click element    ${cadastrarClienteForm}
    Preencher form text    emailInvalido.com.br
    Enviar imagem
    preencher select
    preencher radio
    preencher checkbox
    Click Button    ${btnSalvarCliente} 

cadastrar cliente faltando dados
    Sleep    3
    Click element    ${cadastrarClienteForm}
    Input Text     ${inputNomeCompleto}         ${NomeCompleto}
    Element Should Be Disabled    ${btnSalvarCliente} 
    Input Text     ${inputTelefone}             ${Telefone}  
    Element Should Be Disabled    ${btnSalvarCliente} 
    Input Text     ${inputEmailCadastro}        ${Email} 
    Element Should Be Disabled    ${btnSalvarCliente} 
    Input Text     ${inputCEP}                  ${CEP}     
    Element Should Be Disabled    ${btnSalvarCliente} 
    Input Text     ${inputNumeroResidencia}     ${NumeroResidencia}
    Element Should Be Disabled    ${btnSalvarCliente} 
    Input Text     ${inputEndereco}             ${Endereco}   
    Element Should Be Disabled    ${btnSalvarCliente} 
    Input Text     ${inputComplemento}          ${Complemento}  
    Element Should Be Disabled    ${btnSalvarCliente} 
    Enviar imagem
    Element Should Be Disabled    ${btnSalvarCliente} 
    preencher radio
    Element Should Be Disabled    ${btnSalvarCliente} 
    preencher checkbox     
    Sleep    3

Preencher form text
    [arguments]        ${EmailForm}=${Email}
    Input Text     ${inputNomeCompleto}         ${NomeCompleto}
    Input Text     ${inputTelefone}             ${Telefone}  
    Input Text     ${inputEmailCadastro}        ${EmailForm}   
    Input Text     ${inputCEP}                  ${CEP}      
    Input Text     ${inputNumeroResidencia}     ${NumeroResidencia}
    Input Text     ${inputEndereco}             ${Endereco}   
    Input Text     ${inputComplemento}          ${Complemento}  

Enviar imagem 
    Choose File    ${inputImg}                  C:\\Users\\Alysson\\Desktop\\TestePrimeControl\\mcQUEEN.png

preencher select
    Select From List by Value    ${inputPais}    ${pais}

preencher radio
    Click Element    ${radioMasculino}

preencher checkbox
    Click Element    ${checkBoxRobot} 

sistema não libera botão "Salvar"
    Element Should Be Enabled  ${btnSalvarCliente}

pesquisar por cliente já cadastrado
    Sleep    2
    input text        ${inputPesquisaCliente}    ${NomeCompleto}
    Sleep    2
    click button      ${btnPesquisarCliente}
 
sistema deve exibir dados cadastrados 
    Sleep    5
    Page Should Contain element       ${nomePesquisaCliente}        
    Page Should Contain element       ${emailPesquisaCliente}        
    Page Should Contain element       ${telefonePesquisaCliente}     



sistema exibe lista de cliente com o cadastrado
    Sleep    5
    Page Should Contain    ${Email}   

sistema deve exibir mensagem de email inválido
    