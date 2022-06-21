require 'yaml'
require 'report_builder'

Before do |scenario|
    $logger = Logger.new(STDOUT)
end

After('@teste_login_sucesso') do
  @home.suaConta
  @account.deslogar
end

After('@teste_login_sem_sucesso') do
  @home.logoDrogasil
end

at_exit do
   $driver.close
end 
