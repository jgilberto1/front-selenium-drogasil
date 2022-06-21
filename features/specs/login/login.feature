# language: pt

@login
Funcionalidade: login drogasil
  Usuários com acesso conseguem efetuar o login,
  já os sem receberão a mensagam que login ou senha estão incorretos.

  @teste_login_sucesso
  Esquema do Cenário: Logar com sucesso
    Dado que esteja na página de login
    Quando informar o "<dado>" e "<senha>"
    Entao fará o login com sucesso

    Exemplos: 
      | dado         |senha         |
      | cpf_valido   |senha_valida  |
      | email_valido |senha_valida  |

  @teste_login_sem_sucesso
  Esquema do Cenário: Login sem susesso
    Dado que esteja na página de login
    Quando informar o "<dado>" e "<senha>"
    Entao mostrará a mensagem sem sucesso de acordo com o "<tipo>"

    Exemplos: 
      |dado          |senha         |tipo              |
      |email_valido  |senha_invalida|usuario_nao_existe|
      |email_invalido|senha_valida  |usuario_nao_existe|
      |email_invalido|senha_invalida|usuario_nao_existe|
      |cpf_valido    |senha_invalida|usuario_nao_existe|
      |cpf_invalido  |senha_valida  |usuario_nao_existe|
      |cpf_invalido  |senha_invalida|usuario_nao_existe|
      |              |              |campo_dado_vazio  |
      |cpf_valido    |              |campo_senha_vazio |
      |              |senha_valida  |campo_dado_vazio  |