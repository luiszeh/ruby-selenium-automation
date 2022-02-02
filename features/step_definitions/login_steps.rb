Dado('que estou na página de login') do
    @login_page = Login.new # usei o @ pra declarar a var e setar ela como a minha classe da minha page pra ter acesso a ela
    @login_page.load # .load carrega a URL setada no meu Page Object
end

Quando('realizo o login na plataforma') do
    @login_page.login() # aqui eu executo minha função de login, como pede
end

Quando('tento realizar o login com email inválido') do
  @login_page.login_fail_email_func() # aqui executo a funcção de tentar logar com a senha errada
end

Quando('tento realizar o login com a senha inválida') do
  @login_page.login_fail_senha_func() # aqui executo a funcção de tentar logar com a senha errada
end

Então('login é efetivado com sucesso e sou redirecionado para a página principal') do
  expect(@login_page.label_logged).to have_content("Hello")
  # expect(@login_page.confirm_login).to be_truthy
  # expect(@login_page.confirm_login).to equal(true)
end

Então('visualizo que a senha está invalida') do
  expect(@login_page.fail_login_msg).to have_content("Lost your password?")
end

Então('visualizo que o email está inválido') do
  expect(@login_page.fail_login_msg).to have_content("Error: A user could not be found with this email address.")
end