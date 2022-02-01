class Login < SitePrism::Page         # Está herdando os métodos de SitePrism::Page

set_url 'http://practice.automationtesting.in/my-account/'                         # O usuário está sendo direcionado para a URL passada no documento env.rb (Vou explicar melhor quando falar desse documento)

element :input_email, '#username'      # Encontrando o elemento de input de email
element :input_password, '#password'  # Encontrando o elemento de input de password
# element :alert, '#center_column > div.alert.alert-danger > ol > li'
element :button_login, '.woocommerce-Button'
element :label_logged, '.woocommerce-MyAccount-content'

def login()
input_email.send_keys("luisffg91@gmail.com")
input_password.send_keys("Senhazuada")
button_login.click
end

def confirm_login()
    label_logged.has_text?('Hello')
end


end



# # = id, . = class (.minhaClass - #meuId)

# é possivel usar uma classe dessa maneira: '[class="a-carousel-card"]'