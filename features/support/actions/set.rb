require 'logger'

def set(el, text)
    wait_for_display(el)
    $driver.find_element(:"#{el['type']}", el['value']).send_keys text
    $logger.info('Setou informações no elemento' + el['value'] + ' usando o tipo de busca' + el['type'])
end
