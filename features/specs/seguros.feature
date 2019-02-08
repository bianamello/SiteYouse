#language:pt

Funcionalidade: Seguros

    Sendo um usuário que quer conhecer os seguros Youse para Casa, Auto e Vida
    Posso acessar o site
    Para visualizar as informações dos seguros e realizar cotações online
    
@seguros @infoSeguros
Esquema do Cenário: Visualizar informações dos seguros 
    
    Dado que eu acesse a pagina da Youse
    Quando desejo conhecer o seguro Youse        
    Entao sou direcionado para a pagina institucional do produto
        | produto | <produto> |
        | url     | <url>     |

    Exemplos: 
        | produto            | url                                          |
        | Seguro Auto        | https://www.youse.com.br/seguro-auto/        |
        | Seguro Residencial | https://www.youse.com.br/seguro-residencial/ |
        | Seguro Vida        | https://www.youse.com.br/seguro-vida/        |


@seguros @cotacao 
Esquema do Cenário: Cotação de seguros
    
    Dado que eu acesse a pagina da Youse
    Quando desejo conhecer o seguro Youse
    Entao sou direcionado para a pagina institucional do produto
        | produto | <produto> |
        | url     | <url>     |
    E posso realizar uma cotação
    E selecionar o menor preço
    E personalizar meu seguro e ver a pagina de pagamentos

    Exemplos: 
        | produto     | url                                   |
        | Seguro Auto | https://www.youse.com.br/seguro-auto/ |