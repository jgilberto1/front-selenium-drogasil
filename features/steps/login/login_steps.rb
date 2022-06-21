Dado('que esteja na página de login') do
    @home = HomePage.new
    @login = LoginPage.new
    @home.suaConta
    @home.acessaLogin
    @login.login?
end

Quando('informar o {string} e {string}') do |dado, senha|
    @login.logarDado dado
    @login.logarSenha senha
    @login.btnLogin
  end
  
Entao('fará o login com sucesso') do
    @account = AccountPage.new
    expect(@account.account?).to be_truthy
end

Entao('mostrará a mensagem sem sucesso de acordo com o {string}') do |tipo|
    expect(@login.erroLogin(tipo)).to be_truthy
end