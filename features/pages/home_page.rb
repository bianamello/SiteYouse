class HomePage < SitePrism::Page

    set_url 'https://www.youse.com.br/'

    element :botao_minhaConta, 'a[id="header-link__minha-conta"]'
    element :botao_seguros, 'span[class="nav__link has-submenu"]'
    element :botao_seguroAuto, 'a[id="header-link__seguro-auto"]'
    element :botao_seguroHome, 'a[id="header-link__seguro-residencial"]'
    element :botao_seguroVida, 'a[id="header-link__seguro-vida"]'


    def abrirLogin
        botao_minhaConta.click
    end

    def abrirMenuSeguros
        botao_seguros.click
    end

    def abrirInfoSeguroAuto
        botao_seguroAuto.click
    end

    def abrirInfoSeguroHome
        botao_seguroHome.click
    end

    def abrirInfoSeguroVida
        botao_seguroVida.click
    end

end
