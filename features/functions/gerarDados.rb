
def gerarDadosParaCadastro

    nome = Faker::Name.first_name                     #0
    email = Faker::Internet.email                     #1      
    senha = Faker::Number.number(8)                   #2
    telefone = '11 99999-9999'                        #3
    placa = 'EID9094'                                 #4
    cep = '12.301-330'                                #5
    bairro = Faker::Address.community                 #6
    cidade = Faker::Address.city                      #7
    rua = Faker::Address.street_name                  #8
    numero = Faker::Number.number(3)                  #9
    cpf = '888.888.888-88'                            #10
    nomeCompleto = "#{nome} #{Faker::Name.last_name}" #11
    dataNascimento = '08/01/1987'                     #12

    dados = [nome, email, senha, telefone, placa, cep, bairro, cidade, rua, numero, cpf, nomeCompleto, dataNascimento]
end
