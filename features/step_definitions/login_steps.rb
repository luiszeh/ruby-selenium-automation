Dado('que estou na página de login') do
    @login_page = Login.new # usei o @ pra declarar a var e setar ela como a minha classe da minha page pra ter acesso a ela
    @login_page.load # .load carrega a URL setada no meu Page Object
end

Quando('realizo o login na plataforma') do
    @login_page.login() # aqui eu executo minha função de login, como pede
end

Então('login é efetivado com sucesso e sou redirecionado para a página principal') do
  expect(@login_page.label_logged).to have_content("Hello")
  # expect(@login_page.confirm_login).to be_truthy
  # expect(@login_page.confirm_login).to equal(true)
end