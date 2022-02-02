class Login < SitePrism::Page         # Está herdando os métodos de SitePrism::Page

set_url '/my-account/'                         # O usuário está sendo direcionado para a URL passada no documento env.rb (Vou explicar melhor quando falar desse documento)

element :input_email, '#username'      # Encontrando o elemento de input de email
element :input_password, '#password'  # Encontrando o elemento de input de password
element :label_logged, '.woocommerce-MyAccount-content'
element :fail_login_msg, '.woocommerce > ul > li'   # Encontrando a msg de erro do email incorreto

def login()
input_email.send_keys("luisffg91@gmail.com")
input_password.send_keys("Senhazuada")
find(:xpath, "//input[@name='login']").click
# input_button.click
end

def login_fail_email_func()
    input_email.send_keys("email.errado@gmail.com")
    input_password.send_keys("Senhazuada")
    find(:xpath, "//input[@name='login']").click
end

def login_fail_senha_func()
    input_email.send_keys("luisffg91@gmail.com")
    input_password.send_keys("1234")
    find(:xpath, "//input[@name='login']").click
end

end

# //input[@name=“login”]
# //*[@id="customer_login"]/div[1]/form/p[3]/input[3]

# # = id, . = class (.minhaClass - #meuId)

# é possivel usar uma classe dessa maneira: '[class="a-carousel-card"]'