#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acessar a pagina de qualquer produto na pagina da EBAC-SHOP

Cenário: Comprar produto
Quando eu selecionar a cor "Orange"
E o tamanho "L"
E a quantidade 3
Então permite a compra do produto

Cenário: Maximo de produtos
Quando eu selecionar a quantidade 15
Então não permite a compra e exibe a mensagem "Compra máxima de 10 unidades por produto"

Cenário: Limpeza de informações
Dado que eu clique no botão limpar
Então as informações de cor, tamanho e quantidade retornam ao estado original da pagina