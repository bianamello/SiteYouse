
Dado("que eu acesse a pagina da Youse") do
    @home.load
end

Quando("desejo conhecer o seguro Youse") do    
    @home.abrirMenuSeguros
end

Entao("sou direcionado para a pagina institucional do produto") do |table|
    @produtos = table.rows_hash
    # Abre a pagina institucional de cada produto e verifica a url da pagina 
    if (@produtos['produto']) == "Seguro Auto"
        @home.abrirInfoSeguroAuto        
        expect(page.current_url).to eql (@produtos['url'])
        screenshot(nome_cenario = 'PaginaAuto')
    elsif (@produtos['produto']) == "Seguro Residencial"
        @home.abrirInfoSeguroHome        
        expect(page.current_url).to eql (@produtos['url'])
        screenshot(nome_cenario = 'PaginaResidencial')
    elsif (@produtos['produto']) == "Seguro Vida"
        @home.abrirInfoSeguroVida        
        expect(page.current_url).to eql (@produtos['url'])
        screenshot(nome_cenario = 'PaginaVida')
    end
    # Verifica se o texto exibido na pagina institucional corresponde ao produto selecionado
    expect(@produtos['produto']).to include (@paginaInfos.bannerProduto.text)
end

Entao("posso realizar uma cotação") do
    @paginaInfos.abrirCotacao
    @dados = gerarDadosParaCadastro
    @cotacaoAuto.preencherCotacao('Fabiana', @dados[3], @dados[1], @dados[4], @dados[5], 
    @dados[6], @dados[7], @dados[8], @dados[9], @dados[10], 'Pinheiro de Mello', @dados[12])
    screenshot(nome_cenario = 'Cotacao')
end

Entao("selecionar o menor preço") do
    preco1 = (@coberturaAssistencia.preco_1.text)
    preco2 = (@coberturaAssistencia.preco_2.text)
    preco3 = (@coberturaAssistencia.preco_3.text)
    
    if(preco1 < preco2) and (preco1 < preco3)
        @coberturaAssistencia.selecionaCotacao_1
    elsif(preco2 < preco1) and (preco2 < preco3)
        @coberturaAssistencia.selecionaCotacao_2
    else
        @coberturaAssistencia.selecionaCotacao_3
    end
    screenshot(nome_cenario = 'MenorPreco')
end

Entao("personalizar meu seguro e ver a pagina de pagamentos") do
    @personalizar.selecionaCoberturas
    @personalizar.proximoPasso
    @personalizar.selecionaAssistencias
    @personalizar.proximoPasso
    @personalizar.meusDados
    screenshot(nome_cenario = 'PaginaFinalizandoCotacao')
    @personalizar.proximoPasso
    screenshot(nome_cenario = 'NaoAprovouSeguro')
    # Obs: Após pagina "3/4 Meus Dados" o sistema não está aceitando meu CPF, e por isso não consigo chegar na pagina de pagamentos
    # Ver os prints do Teste
end

