class PersonalizarSeguroPage < SitePrism::Page

    element :selecionaPerdaTotal, '.coverages-list__item:nth-child(1) label'
    element :selecionaQualquerBatida, '.coverages-list__item:nth-child(3) label'
    element :selecionaReparoSimples, '.assistance:nth-child(4) label'
    element :selecionaMotorista, '.assistance:nth-child(6) label'
    element :selecionaHigienizacao, '.assistance:nth-child(7) label'
    element :selectBlindado, '#auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof'
    element :blindadoNao, 'select[id*="bullet_proof"] > option[value="false"]'

    element :botao_proximoPasso, 'input[type="submit"]'

    def selecionaCoberturas
        selecionaPerdaTotal.click
        selecionaQualquerBatida.click
    end

    def selecionaAssistencias
        selecionaReparoSimples.click
        selecionaMotorista.click
        selecionaHigienizacao.click
    end   
    
    def meusDados
        selectBlindado.click
        blindadoNao.click
    end
    
    def proximoPasso
        botao_proximoPasso.click
    end
end
