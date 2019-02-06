class AreaLogadaPage < SitePrism::Page

    element :menuUsuario, 'a[href="javascript://"][class*="with-sub-menu"]'
    element :nomeUsuario, 'a[href="javascript://"][class*="with-sub-menu"] strong'
    element :botao_minhaConta, 'a[id="my_account"]'
    element :botao_sair, 'a[id="track_logout"]'

    def abrirMenuUsuario
        menuUsuario.click
    end

    def sairAreaLogada
        menuUsuario.click
        botao_sair.click
    end

end
