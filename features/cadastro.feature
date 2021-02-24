#language: pt
Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @cadastro
    Cenario: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro
            | nome | email          | senha   |
            | Will | will@gmail.com | pwd5523 |
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentativa de Cadastro

    @tentativa_cadastro
    Cenario: Submeter cadastro sem o nome
        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro
            | nome | email          | senha   |
            |      | will@gmail.com | pwd5523 |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input | email_input    | senha_input |
            |            | will@gmail.com | pwd5523     | Oops. Informe seu nome completo! |
            | Will       |                | pwd5523     | Oops. Informe um email válido! |
            | Will       | will&gmail.com | pwd5523     | Oops. Informe um email válido! |
            | Will       | will#gmail.com | pwd5523     | Oops. Informe um email válido! |
            | Will       | will@gmail.com |             | Oops. Informe sua senha secreta! |
