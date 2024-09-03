@fluxoEcecao
Feature: UI0002 - Calcular Frete - Fluxos Alternativos
    Eu como usuário desejo fazer o cáculo do frete

    @fluxoEcecao
    Scenario: UI0002.1 - Campos Obrigatórios Vazios
        Given eu acesso a página "Calcular Frete"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "CEP de origem é obrigatório"
        Then deve ser mostrada a mensagem de alerta "peso é obrigatório"
        Then deve ser mostrada a mensagem de alerta "Altura mínima 0.4 cm."
        Then deve ser mostrada a mensagem de alerta "Largura mínima 8 cm."
        Then deve ser mostrada a mensagem de alerta "Comprimento mínimo 13 cm."
        Then deve ser mostrada a mensagem de alerta "CEP de destino é obrigatório"

    @fluxoEcecao
    Scenario: UI0002.2 - Campos númericos inválidos
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "aaaa"
        When eu preencho "largura" com "bbb"
        When eu preencho "comprimento" com "ccc"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "altura precisa ser um número."
        Then deve ser mostrada a mensagem de alerta "largura precisa ser um número."
        Then deve ser mostrada a mensagem de alerta "largura precisa ser um número."
        Then deve ser mostrada a mensagem de alerta "comprimento precisa ser um número."

    @fluxoEcecao
    Scenario: UI0002.3 - Altura menor que o mínimo permitido (0.3999cm)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "0.3999"
        When eu preencho "largura" com "11"
        When eu preencho "comprimento" com "16"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "Altura mínima 0.4 cm."

    @fluxoEcecao
    Scenario: UI0002.4 - Altura maior que o máximo permitido (150.01cm)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "150.01"
        When eu preencho "largura" com "11"
        When eu preencho "comprimento" com "16"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "Altura máxima 150 cm."

    @fluxoEcecao
    Scenario: UI0002.5 - A soma altura + largura + comprimento MUITO superior a 300 cm
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "150"
        When eu preencho "largura" com "150"
        When eu preencho "comprimento" com "150"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "a soma resultante da altura + largura + comprimento não deve superar 300 cm."

    @fluxoEcecao
    Scenario: UI0002.6 - A soma altura + largura + comprimento superior a 300 cm (150 + 100 + 50.01)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "150"
        When eu preencho "largura" com "100"
        When eu preencho "comprimento" com "50.01"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "a soma resultante da altura + largura + comprimento não deve superar 300 cm."

    @fluxoEcecao
    Scenario: UI0002.7 - Lagura menor que o mínimo permitido (7.99cm)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "10"
        When eu preencho "largura" com "7.99"
        When eu preencho "comprimento" com "16"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "Largura mínima 8 cm."

    @fluxoEcecao
    Scenario: UI0002.8 - Largura maior que o máximo permitido (150.01cm)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "100"
        When eu preencho "largura" com "150.01"
        When eu preencho "comprimento" com "16"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "Largura máxima 150 cm."

    @fluxoEcecao
    Scenario: UI0002.9 - Comprimento menor que o mínimo permitido (12.99cm)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "10"
        When eu preencho "largura" com "8"
        When eu preencho "comprimento" com "12.99"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "Comprimento mínimo 13 cm."

    @fluxoEcecao
    Scenario: UI0002.10 - Comprimento maior que o máximo permitido (150.01cm)
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "08090284"
        When eu seleciono a opção "Caixa / Pacote" como "formato"
        When eu seleciono a opção "Até 300g" como "peso"
        When eu preencho "altura" com "100"
        When eu preencho "largura" com "15"
        When eu preencho "comprimento" com "150.01"
        When eu preencho "cep destino" com "05407002"
        When eu clico no botão calcular
        Then deve ser mostrada a mensagem de alerta "Comprimento máximo 150 cm."