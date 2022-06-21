class AccountPage
    def initialize
      get_element 'account'
    end
  
    def account?
      wait_for_display(@map['resumo_conta'])
    end

    def deslogar
      click(@map['deslogar'])
      wait_for_display(@map['deslogado'])
      wait_for_display(@map['banner_home'])
    end
end