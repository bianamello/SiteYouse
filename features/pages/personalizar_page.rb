class PersonalizarSeguroPage < SitePrism::Page

    element :selecionaPerdaTotal, '#edit_auto_order_flow_coverages_selection_14782946 > ul > li.coverage-group.auto-completo > div.coverage-group__content > div > div > ul > li:nth-child(1) > div.coverage__action-box > div > label'
    
    # element :selecionaPerdaTotal, 'input[id="switch_67367274117695498648592862445944679444"]'
    element :selecionaQualquerBatida, 'label[for="switch_190557334854951259081483606012882028656"]'
    element :selecionaReparoSimples, 'label[for="switch_33880955802405169762672047579764667507"]'
    element :selecionaMotorista, 'label[for="switch_51058870826434498864904604674007616441"]'
    element :selecionaHigienizacao, 'label[for="switch_111218040692047572139464592786509832453"]'
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
