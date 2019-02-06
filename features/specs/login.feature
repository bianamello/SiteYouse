#language:pt

Funcionalidade: Login

    Sendo um usuário que possui conta no site da Youse
    Posso fazer login no site
    Para comprar e gerenciar meus seguros online
    
@login @loginValido
Cenário: Login Valido 
    
    Dado que eu tenho uma conta criada no site da Youse
    Quando faço login com "<email>" e "<senha>"
    Entao sou autenticado com sucesso e vejo a pagina de area logada


@login @loginInvalido 
Esquema do Cenário: Login Invalido 
    
    Dado que eu acesse a pagina de login da Youse
    Quando faço login com os seguintes dados incorretos:
        | email | <email> |
        | senha | <senha> |
    Entao devo ver uma "<mensagem>" de alerta

    Exemplos: 
      | email             | senha    | mensagem                  |
      | testes@testes.com |          | Email ou senha inválidos. |
      | testes@testes.com | 12345678 | Email ou senha inválidos. |