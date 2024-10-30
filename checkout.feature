#language: pt

Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero fazer concluir meu cadastro
  Para finalizar minha compra

Contexto:
 Dado que estou na página de checkout

  Cenário: Cadastro com todos os dados obrigatórios preenchidos
    E preencho todos os campos obrigatórios com informações válidas
    Quando submeto o formulário de cadastro
    Então o cadastro deve ser concluído com sucesso
    E devo ser direcionado para a página de confirmação de compra

  Esquema do Cenário: Validação de formato de e-mail
    Quando preencho o campo "E-mail" com <email>
    E submeto o formulário de cadastro
    Então devo ver uma <mensagem de erro> indicando que o e-mail é inválido

    Exemplos:
      | email             | mensagem de erro |
      | email@invalido    | "Email invalido" |
      | email.com         | "Email invalido" |
      | @email.com        | "Email invalido" |
      | email@dominio     | "Email invalido" |

  Cenário: Tentativa de cadastro com campos obrigatórios vazios
    Quando deixo os campos obrigatórios em branco
    E submeto o formulário de cadastro
    Então devo ver uma mensagem de alerta indicando que os campos obrigatórios precisam ser preenchidos
