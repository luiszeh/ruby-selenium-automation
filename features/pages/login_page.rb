class Login < SitePrism::Page         # Está herdando os métodos de SitePrism::Page

set_url '/my-account/'                         # O usuário está sendo direcionado para a URL passada no documento env.rb (Vou explicar melhor quando falar desse documento)

element :input_email, '#username'      # Encontrando o elemento de input de email
element :input_password, '#password'  # Encontrando o elemento de input de password
# element :alert, '#center_column > div.alert.alert-danger > ol > li'
# element :input_button, '.woocommerce-Button button'
element :label_logged, '.woocommerce-MyAccount-content'

def login()
input_email.send_keys("luisffg91@gmail.com")
input_password.send_keys("Senhazuada")
find(:xpath, "//input[@name='login']").click
# input_button.click
end

def confirm_login()
    label_logged.has_text?('Hello')
end


end

# //input[@name=“login”]
# //*[@id="customer_login"]/div[1]/form/p[3]/input[3]

# # = id, . = class (.minhaClass - #meuId)

# é possivel usar uma classe dessa maneira: '[class="a-carousel-card"]'