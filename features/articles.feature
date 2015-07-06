# language: pt

@javascript
Funcionalidade: Articles
  Testar funcionalidades da parte de Articles da aplicação.

  Cenário de Fundo: Visitar página de Articles.
    Dado que estou na página de "Articles"

  Cenário: Criar um Article
    Quando clicar "New Article"
    E for redirecionado para página de "Create Articles"
    E preencher o formulário
    E clicar no botão "Create Article"
    Então receberei a mensagem "Article was successfully created."
