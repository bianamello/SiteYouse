class HomePage < SitePrism::Page

    set_url 'https://www.youse.com.br/'

    element :botao_minhaConta, 'a[id="header-link__minha-conta"]'

    def abrirLogin
        botao_minhaConta.click
    end

end
