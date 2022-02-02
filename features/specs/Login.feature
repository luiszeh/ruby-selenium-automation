# language: pt

# os testes de fumaça são testes de confiança, para verificar os recursos minimos e importantes da aplicação e seguir para o proximo passo
@smoke
Funcionalidade: Login

Eu como usuário da AT.io
Quero ter acesso a plataforma
Para gerenciar a minha conta

    Contexto:
        Dado que estou na página de login

    Cenário: Login válido
        Quando realizo o login na plataforma
        Então login é efetivado com sucesso e sou redirecionado para a página principal

    
    Cenário: Login com email inválido
        Quando tento realizar o login com email inválido
        Então visualizo que o email está inválido

    Cenário: Login com senha inválida
        Quando tento realizar o login com a senha inválida
        Então visualizo que a senha está invalida
    