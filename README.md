# Automação Front-End - Drogasil

Projeto de automação de testes de login site da Drogasil

## Instalação do ambiente

* Instalar a IDE que desejar, recomendado Visual Studio Code. as execuções podem ser realizadas no terminal do Vs Code ou
  se recomenda utilizar o Console do Cmder.
  Baixe em: https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder.zip 

* Instalar ruby
  Baixe em: http://rubyinstaller.org/downloads/

* Instalar as dependencias do projeto que estão no gemfile
  gem install bundle no terminal ou cmder

* Baixar drivers de execução (geckodriver, chromedriver...) e instalar de acordo com a versão do browser utilizado.
  O Asset está configurado para execução no chrome(Padrão), safari. internet explorer e firefox.

## Uso

Antes da execução, é necessário informar um usuário válido cadastrado na plataforma em features/support/data/login.yml (Utilizar o modelo especificado)

Para executar algum cenário / suíte:

```sh
cucumber -t <TAGS> -p <BROWSER> 
```

```sh default
cucumber -t <TAG>
```
A execução default está setada em config\cucumber.yml como execução no browser google chrome, e com o report do cucumber gerando automaticamente.

## Desenvolvimento

**Para criar um cenário:**

- Criar o cenário na estrutura `src\features\specs\funcionalidade\funcionalidade.feature`
- Criar os steps na estrutura `src\features\steps\funcionalidade\funcionalidade_steps.rb`
- Criar os elementos na estrutura `src\features\elements\funcionalidade_screen.yml`
- Criar as pages na estrutura `src\features\pages\funcionalidade.rb`

**Boas práticas:**

- Seguir o [Padrão de escrita dos Gherkins]
- Dar uma atenção em especial para as tags, para execução mais flúida dos cenários
- Os steps devem fazer apenas o que se propõem, nada a mais, nada a menos
- Prezar pelo reaproveitamento dos steps
- Lógica que serão reaproveitadas em N lugares, devem estar na estrutura `features\support\utils.rb`

**Parâmetros:**

- -e TAGS="-t @???": tags dos cenários que quer executar. (_Exemplo: "-p @teste_login_sem_sucesso"_)
- -e PROFILES="-p ??? -p ...": parâmetros para execução customizada, esse parâmetro é opcional e por padrão considera "-p default".

**Relatórios**

- São gerados na pasta raiz com o nome report.html