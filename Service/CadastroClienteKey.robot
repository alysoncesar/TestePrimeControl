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

Preencher form text
    Input Text     ${inputNomeCompleto}         ${NomeCompleto}
    Input Text     ${inputTelefone}             ${Telefone}  
    Input Text     ${inputEmailCadastro}        ${Email}   
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