class CotacaoAutoPage < SitePrism::Page

    element :input_nome, '#auto_order_flow_lead_person_data_lead_person_attributes_name'
    element :input_telefone, '#auto_order_flow_lead_person_data_lead_person_attributes_phone'
    element :input_email, '#auto_order_flow_lead_person_data_lead_person_attributes_email'
    element :botao_proximoPasso, 'input[type="submit"]'
    element :input_placa, '#auto_order_flow_pricing_requirements_vehicle_attributes_license_plate_or_vin'
    element :select_versaoVeiculo, 'ul[class="vehicle-completion__result_list"] li:first-child > div[class="radio-button"] > label'
    element :select_tipoUso, '#auto_order_flow_pricing_requirements_vehicle_attributes_usage'
    element :select_tipoUsoParticular, 'option[value="auto|private"]'
    element :select_emNome, '#auto_order_flow_pricing_requirements_vehicle_attributes_ownership_status'
    element :select_emNomeFisica, 'option[value="owned_by_person"]'
    element :input_cep, '#auto_order_flow_pricing_requirements_insured_person_attributes_address_attributes_zipcode'
    element :input_bairro, '#auto_order_flow_pricing_requirements_insured_person_attributes_address_attributes_neighborhood'
    element :input_cidade, '#auto_order_flow_pricing_requirements_insured_person_attributes_address_attributes_city'
    element :input_rua, '#auto_order_flow_pricing_requirements_insured_person_attributes_address_attributes_street'
    element :input_numero, '#auto_order_flow_pricing_requirements_insured_person_attributes_address_attributes_number'
    element :select_dormeOnde, '#auto_order_flow_pricing_requirements_same_zipcode_insured_vehicle'
    element :select_opcaoDorme, 'option[value="true"]'
    element :input_cpf, '#auto_order_flow_pricing_requirements_insured_person_attributes_cpf'
        
    element :input_nomeCompleto, '#auto_order_flow_pricing_requirements_insured_person_attributes_name'
    element :select_sexo, '#auto_order_flow_pricing_requirements_insured_person_attributes_gender'
    element :select_sexoFeminino, 'option[value="female"]'
    element :input_dataNascimento, '#auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth'

    element :select_nascionalidade, '#auto_order_flow_pricing_requirements_insured_person_attributes_nationality'
    element :select_renda, '#auto_order_flow_pricing_requirements_insured_person_attributes_salary_range'
    element :select_rendaMinima, 'option[value="Minimum"]'
    element :select_estadoCivil, '#auto_order_flow_pricing_requirements_insured_person_attributes_marital_status'
    element :select_estadoCivilSolteiro, 'option[value="single"]'
    element :select_declaro, '#auto_order_flow_pricing_requirements_driver_attributes_young_driver'
    element :select_declaroTrue, 'select[id="auto_order_flow_pricing_requirements_driver_attributes_young_driver"] option:nth-child(2)'  # 'option[value="true"]' ul[class="vehicle-completion__result_list"] li:first-child 
    element :select_sinistro, '#auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim'
    element :select_sinistroOpcaoNunca, 'option[value="10"]'


    def preencherCotacao(nome, telefone, email, placa, cep, bairro, cidade, rua, numero, cpf, nomeCompleto, dataNascimento)
        input_nome.set nome
        input_telefone.set telefone
        input_email.set email
        botao_proximoPasso.click
        input_placa.set placa
        select_versaoVeiculo.click
        select_tipoUso.click
        select_tipoUsoParticular.click
        select_emNome.click
        select_emNomeFisica.click
        input_cep.set cep
       
        input_numero.set numero
        select_dormeOnde.click
        select_opcaoDorme.click
        input_cpf.set cpf
        
        input_nomeCompleto.set nomeCompleto
        select_sexo.click
        select_sexoFeminino.click
        input_dataNascimento.set dataNascimento

        select_nascionalidade.click
        select_renda.click
        select_rendaMinima.click
        select_estadoCivil.click
        select_estadoCivilSolteiro.click
        select_declaro.click
        select_declaroTrue.click
        select_sinistro.click
        select_sinistroOpcaoNunca.click
        botao_proximoPasso.click
    end

end
