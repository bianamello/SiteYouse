Dado("que eu tenho uma conta criada no site da Youse") do
    @home.load
    @home.abrirLogin
    @login.abrirCadastro
    @dados = gerarDadosParaCadastro
    @cadastro.cadastrar(@dados[0], @dados[1], @dados[2])
    screenshot(nome_cenario = 'Cadastro')
    @areaLogada.sairAreaLogada
end

Quando("faço login com {string} e {string}") do |email, senha|
    @home.abrirLogin
    @login.logar(@dados[1], @dados[2])
end

Entao("sou autenticado com sucesso e vejo a pagina de area logada") do
    # Faz verificação se o nome do usuario é exibido no menu "olá"
    expect(@dados[0].to_s).to include (@areaLogada.nomeUsuario.text)
    screenshot(nome_cenario = 'LoginValido')
end

# ---------------------------------Login inválido---------------------------------
Dado("que eu acesse a pagina de login da Youse") do
    @home.load
    @home.abrirLogin
end
  
Quando("faço login com os seguintes dados incorretos:") do |table|
    @dadosLoginInvalido = table.rows_hash    
    @login.logar(@dadosLoginInvalido['email'], @dadosLoginInvalido['senha'])
    screenshot(nome_cenario = 'LoginInvalido_1')
end

Entao("devo ver uma {string} de alerta") do |mensagem|
    expect(@login.mensagemErro.text).to eql mensagem
    screenshot(nome_cenario = 'LoginInvalido_2')
end