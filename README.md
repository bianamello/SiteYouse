## Site Youse

Projeto desenvolvido para testes de cotação no site

**O projeto possui as seguintes funcionalidades:**
- [x] Cria uma conta e realizar o login com sucesso
- [x] Acessa página institucional de cada produto (Casa, Auto, Vida)
- [x] Valida se cada página institucional acessada corresponde ao produto selecionado.
- [x] Cota um seguro de Auto da Youse até a tela de pagamento. 
- [x] No fluxo de cotação, na tela que apresenta 3 planos, seleciona o menor deles, clica no botão de
personalizar o seguro
- [x] Faz a seleção de duas coberturas e 3 assistências na tela de assistências


### Estrutura do projeto:
- Desenvolvido no padrão page object
- Possui relatório em formato html, com evidência dos testes em anexo (imagens) - Pasta reports
- Configurado para rodar no navegador Chrome


### Configurando o ambiente:
Antes de rodar os testes, por favor instale:

1 - [ruby] - Instalando ruby
- Guia Instalando Ruby no Windows: https://medium.com/qaninja/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95
- Guia Instalando Ruby no Ubuntu: https://medium.com/qaninja/como-instalar-ruby-com-rbenv-no-ubuntu-a75d1999362b


2 - [Chrome_Driver] - Configurando navegador Chrome para rodar o testes:
- Baixar o arquivo no site: http://chromedriver.chromium.org/downloads. Selecione a versão compatível com o seu sistema.
- Navegue até a pasta onde realizou o download do arquivo e descompacte-o 
- Mover o arquivo descompactado para a seguinte pasta:
	Linux:
   		“/usr/bin/” e para isso vamos executar o comando abaixo:
   		sudo mv chromedriver /usr/bin/
	Windows:
   		C:/Windows

**Executando os testes:**

3 - [Rodando os testes]
- No terminal, na pasta do projeto, execute o seguinte comando que irá instalar as Gems do projeto:
	bundler install
- Para rodar os testes execute o seguinte comando na pasta do projeto:
	cucumber
