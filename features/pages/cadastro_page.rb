class CadastroPage < SitePrism::Page

    element :botao_criarComFacebook, 'a[href="/users/auth/facebook"]'
    element :input_nome, '#user_name'
    element :input_email, '#user_email'
    element :input_senha, '#user_password'
    element :input_confirmaSenha, '#user_password_confirmation'    
    element :botao_enviarCadastro, 'input[type="submit"][value="enviar cadastro"]'
    
     
    def cadastrar(nome, email, senha)
        input_nome.set nome
        input_email.set email
        input_senha.set senha
        input_confirmaSenha.set senha
        botao_enviarCadastro.click
    end
    
end