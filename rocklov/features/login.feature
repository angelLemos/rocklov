#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da RockLov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "angelicaL@gmail.com" e "123456"
        Então sou redirecionado para o Dashboard

    @debug
    Esquema do Cenario: Tentativa para logar
        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "senha_input"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input         | senha_input | mensagem_output                  |
            # | angelicaL@gmail.com  | 345         | Usuário e/ou senha inválidos.    |
            # | angelica12@gmail.com | 1243        | Usuário e/ou senha inválidos.    |
            # | angelica1#gmail.com  | 1673        | Oops. Informe um email válido!   |
            # |                      | 2022        | Oops. Informe um email válido!   |
            | angelica@gmail.com |             | Oops. Informe sua senha secreta! |








