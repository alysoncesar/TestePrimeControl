*** Settings ***
Resource    ../Resource/global.robot

*** Variables ***

${codigoClienteEditar}    tBvAIupmiNM2wMc81IIW

${btnEditar}              xpath=//a[@href="/app/editarcliente/${codigoClienteEditar}"]

${inputEditarNome}        xpath=(//input[@class="form-control"])[2]
${inputEditarEmail}       xpath=(//input[@class="form-control"])[3]
${inputEditarTelefone}    xpath=(//input[@class="form-control"])[4]

${inputEditarImg}         xpath=(//input[@class="form-control"])[5]
${btnExcluirImg}          xpath=//button[text()="Excluir Foto"]

${btnSalvar}              xpath=//button[text()="Salvar"]