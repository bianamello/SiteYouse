class CoberturaAssistenciaPage < SitePrism::Page

    element :preco_1, '#preformatted-coverages-auto-plans-1 > div > div[class*="pricing--money"] > span[class*="pricing--whole-number"]'
    element :preco_2, '#preformatted-coverages-auto-plans-2 > div > div[class*="pricing--money"] > span[class*="pricing--whole-number"]'
    element :preco_3, '#preformatted-coverages-auto-plans-3 > div > div[class*="pricing--money"] > span[class*="pricing--whole-number"]'
    element :botaoPlano_1, 'a[href*="plans%2F1"]'
    element :botaoPlano_2, 'a[href*="plans%2F2"]'
    element :botaoPlano_3, 'a[href*="plans%2F3"]'
   
    def selecionaCotacao_1
        botaoPlano_1.click
    end

    def selecionaCotacao_2
        botaoPlano_2.click
    end
    
    def selecionaCotacao_3
        botaoPlano_3.click
    end
end
