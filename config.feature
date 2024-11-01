#language: pt

Funcionalidade: Tela de login
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Cenario: Seleção de cor, tamanho e quantidade obrigatório
        Dado que o cliente esta na pagina de confiuração de produto
        Quando  O cliente tenta adicionar o produto ao carrinho
        E não selecionou cor, tamanho ou quantidade
        Entao o sistema deve exibir uma mensagem de erro informando que esses campos são obrigatórios

    Cenario: limite de 10 produtos por venda
        Dado que o cliente esta na pagina de confiuração de produto
        Quando  O cliente adiciona 11 produtos ao carrinho
        Então o sistema deve exibir uma mensagem de erro informando que o carrinho já está cheio

    Cenario: Limpar seleção de produtos
        Dado que o cliente configurou o produto selecionando cor, tamanho e quantidade
        Quando O cliente clica no botão "Limpar"
        Então  todas as seleções feitas (cor, tamanho, quantidade) devem ser removidas e os campos devem retornar ao estado original

    Esquema do Cenário: limite de 10 produtos por venda
        Quando o cliente adicionar <quantidade>
        Então o sistema deve exibir a <mensagem>

        Exemplos:
            | quantidade | mensagem                 |
            | 11         | O carrinho já está cheio |
            | 10         | selecao permitida        |
            | 5          | selecao permitida        |
            | 8          | selecao permitida        |
