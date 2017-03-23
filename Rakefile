require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

Capybara.register_driver :Selenium do |app|
  Capybara: : Selenium: :Driver.new(app, :Browser => :chrome) 
end

#Setando a configuração como padrão
Capybara.default_driver = :selenium

#Timeout padrão na execução
Capybara.default_max_wait_time = 15

#Maximizar a tela ao iniciar o test
Capybra.page.driver.browser.manage.window.maximize
