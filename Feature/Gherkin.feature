CT001 - Criar uma nova Conta com sucesso
    DADO que usário acessou pagina principal
    QUANDO desejar criar conta nova
    E preencher de forma correta dados necessários
    ENTAO o sistema deve encaminhar à página de login

CT002 - Validar criação de uma conta com Email já cadastrado
    DADO que usuário acessou pagina principal
    QUANDO desejar criar conta nova 
    E email já está cadastrado
    ENTAO sistema deve exibir mensagem de email já utilizado

CT003 - Realizar Login com sucesso
    DADO que usuário acessou pagina principal
    QUANDO logar com conta já criada
    ENTAO sistema deve encaminhar a pagina home 

CT004 - Validar Login com senha inválida
    DADO que usuário acessou pagina principal
    QUANDO logar conta com senha inválida
    ENTAO sitema deve exibir mensagem de senha incorreta     

CT005 - Realizar Cadastro de Clientes com sucesso na aba Perfil
    DADO que usuário acessou pagina principal
    QUANDO desejar cadastrar cliente
    E preencher formulário de forma correta
    ENTAO sistema salva cliente cadastrado
    E retorna para pagina home

CT006 - Validar Pesquisa de Cliente recém cadastrado e exibição dos dados em tela
    DADO que usuário acessou pagina principal
    QUANDO pesquisar por cliente cadastrado
    ENTAO sistema deve exibir dados do cliente 

CT007 - Editar Cliente através do botão na listagem de clientes
   DADO que usuário acessou pagina principal
   QUANDO acessar aba de edição
   E editar dados do cliente
   ENTAO sistema retorna a página home com alterações 

CT008 – Validar Cadastro de Clientes com Email inválido na aba Perfil 
    DADO que usuário acessou pagina principal
    QUANDO cadastrar cliente com email inválido
    ENTAO sistema exibe mensagem de erro de email inválido

CT009 - Validar preenchimento de campos obrigatórios na aba Perfil
    DADO que usuário acessou pagina principal
    QUANDO cadastrar cliente faltando dados
    ENTAO sistema não libera botão "Salvar"

CT010 - Realizar Logout com sucesso ao clicar em “Finalizar”
    DADO que usuário acessou pagina principal
    QUANDO realizar Logout
    ENTAO sistema deve encaminhar a pagina de login

CT011 - Recuperar senha de acesso
    DADO que usuário acessar menu esqueci minha senha
    QUANDO enviar redefinição de senha
    E acessar link de redefinição
    E redefinir senha
    ENTAO sistema deve alterar senha do usuário 
    
CT012 - Validar preenchimento “Informações do Candidato” ao clicar em “Finalizar e Enviar”
    DADO que usuário acessou pagina principal
    QUANDO acessar finalizar teste
    E preencher dados
    ENTAO sistema deve salvar dados
    E retornar a pagina home



