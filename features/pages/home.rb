class HomePage
    def initialize
      get_element 'home'
    end
  
    def home?
      wait_for_display(@map['home'])
    end

    def suaConta
      click(@map['sua_conta'])
    end

    def acessaLogin
      click(@map['acessa_login'])
    end

    def logoDrogasil
      click(@map['logo_drogasil'])
    end
  end
  