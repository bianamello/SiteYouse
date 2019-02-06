class LoginPage < SitePrism::Page

    element :botao_entrarFacebook, 'a[href="/users/auth/facebook"]'
    element :input_email, '#email'
    element :input_senha, '#user_password'
    element :botao_entrar, 'input[type="submit"][value="entrar"]'
    element :botao_proximoPasso, 'input[type="submit"][value="próximo passo"]'    
    element :botao_cadastraSe, 'a[href="/users/sign_up"]'
    element :botao_esqueciSenha, 'a[href="/users/password/new"]'
    element :mensagemErro, 'div[class="flash-message__text"]'
    

    def abrirCadastro
        botao_cadastraSe.click
    end
    
    
    def logar(email, senha)
        input_email.set email  
        botao_proximoPasso.click
        input_senha.set senha 
        botao_entrar.click
    end   
    
end
