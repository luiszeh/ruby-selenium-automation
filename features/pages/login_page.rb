class Login < SitePrism::Page         # Está herdando os métodos de SitePrism::Page

set_url 'https://www.amazon.com.br/'                         # O usuário está sendo direcionado para a URL passada no documento env.rb (Vou explicar melhor quando falar desse documento)

element :input_email, '#email'      # Encontrando o elemento de input de email
element :input_password, '#passwd'  # Encontrando o elemento de input de password
element :alert, '#center_column > div.alert.alert-danger > ol > li'
element :button_login, '.button_exemplo'
element :label_logged, '#logged_h2'

def login()
input_email.send_keys("email@email.com")
input_password.send_keys("senha1234")
button_login.click
end

def confirm_login()
    label_logged.has_text?('Bem vindo')
end


end



# # = id, . = class (.minhaClass - #meuId)

# é possivel usar uma classe dessa maneira: '[class="a-carousel-card"]'