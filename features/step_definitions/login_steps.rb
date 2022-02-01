Dado('que estou na página de login') do
    @login_page = Login.new # usei o @ pra chamar a var e setar ela como a cminha classe do login_page pra ter acesso a ela
    @login_page.load # .load carrega a URL setada no meu Page Object
end

Quando('realizo o login na plataforma') do
    @login_page.login() # aqui eu executo minha função de login, como pede
end

Então('login é efetivado com sucesso e sou redirecionado para a página principal') do
  # expect(@login_page.label_logged).to have_content("Bem vindo")
  # expect(@login_page.confirm_login).to be_truthy
  # expect(@login_page.confirm_login).to equal(true)
end

Quando('tento realizar o login com o e-mail inválido') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('recebo alerta de login ou senha inválidos') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('tento realizar o login com o celular inválido') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('tento realizar o login com a senha inválida') do
  pending # Write code here that turns the phrase above into concrete actions
end