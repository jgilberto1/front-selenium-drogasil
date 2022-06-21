require 'logger'

def wait
    Selenium::WebDriver::Wait.new :timeout => 25
end

def wait_for_display(el)
  $logger.info("Aguardando o elemento ficar visível #{el['value']} utilizando o tipo de busca #{el['type']}")
  wait.until { $driver.find_element(:"#{el['type']}", el['value']).displayed? }
end

def wait_for_display_index(el, index)
  $logger.info("Aguardando o elemento ficar visível #{el['value']} utilizando o tipo de busca #{el['type']}")
  wait.until { $driver.find_element(:"#{el['type']}", el['value'], [index]).displayed? }
end
