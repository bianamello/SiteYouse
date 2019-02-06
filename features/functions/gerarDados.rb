
def gerarDadosParaCadastro

    nome = Faker::Name.name
    email = Faker::Internet.email
    senha = Faker::Number.number(8)

    dados = [nome, email, senha]
end