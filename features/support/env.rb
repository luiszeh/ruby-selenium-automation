# Before é executado antes de toda a execução.
Before do
    @app = App.new
end

# Declarando a classe App que é onde as pages serão instanciadas
class App
    def login
      Login.new
    end
end

# Importando as bibliotecas para ficarem disponíveis na execução dos testes
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

# Registrando o driver
Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser:  :chrome)  # Vamos utilizar o navegador chrome
end

# Configurando o driver
Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize  # Maximizando a tela
  config.default_max_wait_time = 10  # Tempo máximo que a automação vai esperar para a página carregar ou esperar um elemento
  config.app_host = 'http://practice.automationtesting.in' # URL base que vamos utilizar
end