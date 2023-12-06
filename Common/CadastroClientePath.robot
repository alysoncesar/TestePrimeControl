*** Settings ***
Resource    ../Resource/global.robot

*** Variables ***

${cadastrarClienteForm}        xpath=//a[text()="Cadastrar Cliente"]

#FORM
${inputNomeCompleto}           xpath=(//input[@class='form-control'])[1]
${inputTelefone}               xpath=(//input[@class='form-control'])[2]
${inputEmailCadastro}          xpath=(//input[@class='form-control'])[3]
${inputCEP}                    xpath=(//input[@class='form-control'])[4]
${inputNumeroResidencia}       xpath=(//input[@class='form-control'])[5]
${inputEndereco}               xpath=(//input[@class='form-control'])[6]
${inputComplemento}            xpath=(//input[@class='form-control'])[7]
${inputPais}                   xpath=//select[@class='form-control']
${inputImg}                    xpath=//input[@type='file']

#FORM-RADIO
${radioMasculino}              xpath=//input[@type='radio' and @value='masculino']

#FORM-CHECK
${checkBoxRobot}               xpath=//input[@type='checkbox' and @value='robot']

${btnSalvarCliente}            xpath=//button[@type='submit']



#PESQUISA CLIENTE
${inputPesquisaCliente}        xpath=//input[@class='form-control inputSearch']
${btnPesquisarCliente}            xpath=//button[@id='button-addon2']
${nomePesquisaCliente}         xpath=//p[text()='${nomeCompleto}']
${emailPesquisaCliente}        xpath=//p[text()='${Email}']
${telefonePesquisaCliente}     xpath=//p[text()='${telefone}']