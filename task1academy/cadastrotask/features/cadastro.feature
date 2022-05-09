#language:pt

Funcionalidade: Cadastro
    Para que eu possa efetuar compras
    Sendo um usuário
    Posso acessar o sistema

    Contexto: Página de cadastro
            Dado que eu acesso a página de cadastro

    @logout
    Cenário: Usuário deve se cadastrar
   
        Quando cadastro com "12345Pe@" e "12345Pe@" 
        Então devo ser cadastrado com sucesso
        E devo ver a mensagem "Thank you for registering with Main Website Store."
     
    Esquema do Cenario: Tentativa de cadastro

        Quando cadastro com "<firstname>" e "<lastname>" e "<email>" e "<senha>" e "<senhaconfirm>" 
        Então devo ver a mensagem "<alert>"

        Exemplos:
        | firstname | lastname |       email              |  senha   | senhaconfirm |                alert                                        |
        | Pedro     |  Vitor   | pedrotest2@mailinator.com| 12345Pe@ | 1234Pe@1     | Please enter the same value again.                          |
        | Pedro     |  Vitor   | pedrotesmailinator.com   | 12345Pe@ | 1234Pe@1     | Please enter a valid email address (Ex: johndoe@domain.com) |


