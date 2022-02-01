# language: pt

Funcionalidade: Login

Eu como usuário da Amazon.com
Quero ter acesso a plataforma
Para gerenciar a minha conta

    Contexto:
        Dado que estou na página de login

    Cenário: Realizar o login na plataforma com sucesso
        Quando realizo o login na plataforma
        Então login é efetivado com sucesso e sou redirecionado para a página principal

    Cenário: Tentar realizar o login com os dados de e-mail inválido
        Quando tento realizar o login com o e-mail inválido
        Então recebo alerta de login ou senha inválidos

    Cenário: Tentar realizar o login com os dados de celular inválido
        Quando tento realizar o login com o celular inválido
        Então recebo alerta de login ou senha inválidos

    Cenário: Tentar realizar o login com os dados de senha inválido
        Quando tento realizar o login com a senha inválida
        Então recebo alerta de login ou senha inválidos