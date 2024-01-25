            #language: pt

            Funcionalidade: Tela de cadastro Checkout
            Como cliente da EBAC-SHOP
            Quero fazer ou concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu realizei login na EBAC-SHOP e estou na tela de cadastro

            Cenário: Campos vazios
            Quando eu clique em finalizar compra sem informar os dados obrigatorios
            Então exibir mensagem "Preencher dados Obrigatorios com o *, antes de finalizar a compra"

            Esquema do Cenário: Cadastro de Usuário
            Quando eu digitar o <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <e-mail>
            Então cadastrar usuario

            Exemplos:
            | nome    | sobrenome | pais   | endereco                | cidade          | cep       | telefone   | e-mail                 |
            | Joao    | Silva     | Brasil | Av. Brasil, 578         | Rio de Janeiro  | 96854-547 | 87549-6210 | joaosilva@gmail.com    |
            | Maria   | Carmo     | Brasil | Rua Para, 14547         | São Paulo       | 02020-010 | 99988-0210 | mcarmo@yahoo.com       |
            | Felipe  | Diaz      | Brasil | Rua Torta, S/N          | Salvador        | 54780-000 | 98541-2020 | fdiaz@hotmail.com      |
            | Silvana | Moura     | Brasil | Av. General Coelho, 999 | Juazeiro        | 68975-201 | 98888-8787 | silvanasilvana@bol.com |
            | Luiz    | Mario     | Brasil | Rua das Palmeiras, 2147 | Pindamonhangaba | 58741-332 | 99782-9999 | semnome@gmail.com      |

            Esquema do Cenário: E-mail Inválido
            Quando eu digitar o <e-mail>
            Então exibe mensagem "E-mail inválido"

            Exemplos:
            | e-mail           |
            | joao-asfafsa.com |
            | silva.com        |
            | maria do bairro  |
            | @adalberto       |