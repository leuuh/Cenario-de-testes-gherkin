Feature: Tela de login
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Scenario: Seleção de cor, tamanho e quantidade obrigatório
        Given que o cliente esta na pagina de confiuração de produto
        When  O cliente tenta adicionar o produto ao carrinho
        And não selecionou cor, tamanho ou quantidade
        Then o sistema deve exibir uma mensagem de erro informando que esses campos são obrigatórios

    Scenario: limite de 10 produtos por venda
        Given que o cliente esta na pagina de confiuração de produto
        When  O cliente adiciona 11 produtos ao carrinho
        Then o sistema deve exibir uma mensagem de erro informando que o carrinho já está cheio

    Scenario: Limpar seleção de produtos
        Given que o cliente configurou o produto selecionando cor, tamanho e quantidade
        When O cliente clica no botão "Limpar"
        Then  todas as seleções feitas (cor, tamanho, quantidade) devem ser removidas e os campos devem retornar ao estado original

    Scenario Outline: limite de 10 produtos por venda
        When o cliente adicionar <quantidade>
        Then o sistema deve exibir a <mensagem>

        Examples:
            | quantidade | mensagem                 |
            | 11         | O carrinho já está cheio |
            | 10         | selecao permitida        |
            | 5          | selecao permitida        |
            | 8          | selecao permitida        |