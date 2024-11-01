#language: pt

Funcionalidade: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto:
        Dado que o cliente esta na tela de login (autenticação)

    Cenário: Redirecionamento ao checkout após login bem-sucedido
        Quando inserir um nome de usuário válido "cliente_ebac" e uma senha válida "senha123"
        E clicar no botão de login
        Então deve ser redirecionado para a tela de checkout


    Cenario: Exibir mensagem de erro para login inválido
        Quando inserir um nome de usuário válido, senha válida e clicar no botão de login
        Então deve aparecer uma mensagem de alerta "Usuário ou senha inválidos"

    Esquema do Cenário: Redirecionamento ao checkout após login bem-sucedido
        Quando inserir um nome de <usuario> válido e inserir uma <senha> válida
        E clicar no botão de login
        Então deve ser direcionado para a tela de checkout

        Exemplos:
            | usuario      | senha    |
            | cliente_ebac | senha123 |
            | cliente_x    | senha123 |
