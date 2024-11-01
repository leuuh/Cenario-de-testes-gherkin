Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background:
        Given que o cliente esta na tela de login (autenticação)

    Scenario: Redirecionamento ao checkout após login bem-sucedido
        When inserir um nome de usuário válido "cliente_ebac"
        And inserir uma senha válida "senha123"
        And clicar no botão de login
        Then deve ser redirecionado para a tela de checkout


    Scenario: Exibir mensagem de erro para login inválido
        When inserir um nome de usuário válido, senha válida e clicar no botão de login
        Then deve aparecer uma mensagem de alerta "Usuário ou senha inválidos"

    Scenario Outline: Redirecionamento ao checkout após login bem-sucedido
        When inserir um nome de <usuario> válido e inserir uma <senha> válida
        And clicar no botão de login
        Then deve ser direcionado para a tela de checkout

        Examples:
            | usuario      | senha    |
            | cliente_ebac | senha123 |
            | cliente_x    | senha123 |
