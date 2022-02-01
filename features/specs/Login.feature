# language: pt

@smoke
Funcionalidade: Login

Eu como usuário da AT.io
Quero ter acesso a plataforma
Para gerenciar a minha conta

    Contexto:
        Dado que estou na página de login

    Cenário: Realizar o login na plataforma com sucesso
        Quando realizo o login na plataforma
        Então login é efetivado com sucesso e sou redirecionado para a página principal