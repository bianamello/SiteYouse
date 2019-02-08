require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'cpf_faker'
require 'httparty'
require 'json'
require 'mysql2'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'


#configurando driver do capybara
Capybara.configure do |config|
    config.default_driver = :selenium_chrome # roda teste no chrome
    # config.default_driver = :selenium # roda teste no firefox
    
    # Espera até 30 segundos para encontrar um elemento na página
    config.default_max_wait_time = 30
end