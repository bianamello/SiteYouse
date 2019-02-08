class SeguroInfosPage < SitePrism::Page

    element :bannerProduto, 'div[class="product-banner__card"] > h1 > span'
    element :botaoCotacao, 'div[class="product-banner__card"] > a[href="https://www.youse.com.br/auto/order/new"]'

    def abrirCotacao
        botaoCotacao.click
    end
       
end
