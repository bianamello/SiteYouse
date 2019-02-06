Before do
    @home = HomePage.new
    @cadastro = CadastroPage.new
    @login = LoginPage.new
    @areaLogada = AreaLogadaPage.new
end

After do |scenario|  
    # Substitui os caracteres indesejados do nome do cenário por "vazio"
    nome_cenario = scenario.name.tr(' ,()#1', '')
    nome_cenario = nome_cenario.sub(/Exemplos/, '')
    
    # Chama função que tira print no final de cada cenário
    screenshot(nome_cenario)
end