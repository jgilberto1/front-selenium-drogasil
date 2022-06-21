require 'logger'

def click(el)
    wait_for_display(el)
    $driver.find_element(:"#{el['type']}", el['value']).click
    $logger.info('Clicou no elemento ' + el['value'] + ' usando o metodo de busca ' + el['type'])
end

def click_index(el, index)
    wait_for_display(el)
    $driver.find_element(:"#{el['type']}", el['value'])[index].click
    $logger.info("Clicou no campo no indice #{index} do elemento #{el['value']} usando o tipo de busca #{el['tipo_busca']}")
end

def click_hierarquia(el, el2)
    element = $driver.find_element(:"#{el['type']}", el['value'])
    element.find_element(:"#{el2['type']}", el2['value']).click
    $logger.info(" clicou no index #{index} com #{el} => #{el2} usando o tipo de busca #{el['tipo_busca']} e #{el2['tipo_busca']}")
end
