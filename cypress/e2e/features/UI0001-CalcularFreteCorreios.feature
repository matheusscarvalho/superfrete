@fluxoFeliz
Feature: UI0001 - Calcular Frete
    Eu como usuário desejo fazer o cáculo do frete

    @fluxoFeliz
    Scenario: UI0001.1 - Cálculo Frete (Caixa / Pacote - Até 300g - 2x11x16)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "2"
        When eu preencho "largura" com "11"
        When eu preencho "comprimento" com "16"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a opções de frete
            | tipo        | prazo | balcao    | app     |
            | PAC         | até 5 | 22,00     | R$ 9,39 |
            | SEDEX       | até 1 | 22,00     | R$ 2,07 |
            | Mini Envios | até 5 | Exclusivo | R$ 4,15 |
    @fluxoFeliz
    Scenario: UI0001.2 - Cálculo Frete (Envelope - Até 1Kg - 11x30)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "05407002"
        When eu seleciono a opção "Envelope" como "formato"
        When eu seleciono a opção "Até 1Kg" como "peso"
        When eu preencho "largura envelope" com "11"
        When eu preencho "comprimento envelope" com "30"
        When eu preencho "cep destino" com "08090284"
        When eu clico no botão calcular
        Then deve ser mostrada a opções de frete
            | tipo  | prazo  | balcao | app      |
            | PAC   | até 10 | 22,00  | R$ 10,63 |
            | SEDEX | até 6  | 23,60  | R$ 4,09  |

    @fluxoFeliz
    Scenario: UI0001.3 - Cálculo Frete (Rolo / Cilindro ou Esfera - Até 3Kg - 20x50)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "05407002"
        When eu seleciono a opção "Rolo / Cilindro ou Esfera" como "formato"
        When eu seleciono a opção "Até 3Kg" como "peso"
        When eu preencho "comprimento cilindro" com "20"
        When eu preencho "diametro cilindro" com "50"
        When eu preencho "cep destino" com "08090284"
        When eu clico no botão calcular
        Then deve ser mostrada a opções de frete
            | tipo  | prazo  | balcao | app      |
            | PAC   | até 10 | 35,80  | R$ 21,84 |
            | SEDEX | até 6  | 38,40  | R$ 14,34 |
