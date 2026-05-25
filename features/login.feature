Feature: Login do sistema

Scenario: Login válido
Given que o usuário acessa a tela de login
When informa matrícula "12345"
And informa senha "abc123"
Then o sistema deve permitir o acesso

Scenario: Senha inválida
Given que o usuário acessa a tela de login
When informa matrícula "12345"
And informa senha "senhaerrada"
Then o sistema deve exibir mensagem de erro

Scenario: Matrícula inválida
Given que o usuário acessa a tela de login
When informa matrícula "99999"
And informa senha "abc123"
Then o sistema deve exibir mensagem de erro

Scenario: Senha vazia
Given que o usuário acessa a tela de login
When informa matrícula "12345"
And informa senha ""
Then o sistema deve exibir mensagem de erro

Scenario: Matrícula vazia
Given que o usuário acessa a tela de login
When informa matrícula ""
And informa senha "abc123"
Then o sistema deve exibir mensagem de erro

Scenario: Senha com menos de 6 caracteres
Given que o usuário acessa a tela de login
When informa matrícula "12345"
And informa senha "abc"
Then o sistema deve exibir mensagem de senha inválida