class LoginPage
  def initialize
    get_element 'login'
  end

  def login?
    wait_for_display(@map['pagina_login'])
  end

  def logarDado dado
    case dado
      when "cpf_valido"
        set(@map['input_email_cpf'], $data['cpf_valido'])
      when "email_valido"
        set(@map['input_email_cpf'], $data['email_valido'])
      when "cpf_invalido"
        set(@map['input_email_cpf'], $data['cpf_invalido'])
      when "email_invalido"
        set(@map['input_email_cpf'], $data['email_invalido'])
      else puts "dado não pode ser = null"
    end
  end

  def logarSenha senha
    case senha
      when "senha_valida"
        set(@map['input_password'], $data['senha_valida'])
      when "senha_invalida"
        set(@map['input_password'], $data['senha_invalida'])
      else puts "senha não pode ser = null"
    end
  end

  def btnLogin
    click(@map['btn_login'])
  end

  def erroLogin tipo
    case tipo
      when "usuario_nao_existe"
        wait_for_display(@map['erro_login'])
      when "campo_dado_vazio"
        wait_for_display(@map['dado_vazio'])
      when "campo_senha_vazio"
        wait_for_display(@map['senha_vazio'])
      else puts "tipo não pode ser = null"   
    end 
  end
end
