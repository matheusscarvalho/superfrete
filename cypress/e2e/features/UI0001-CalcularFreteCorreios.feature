Feature: Calcular Frete
    Eu como usuário desejo fazer o cáculo do frete

    Scenario Outline: Cálculo Frete - Sucesso ()
        Given eu acesso a página "Calcular Frete"
        When eu preencho "cep origem" com "<cep_origem>"
        When eu seleciono a opção "<formato>" como "formato"
        When eu seleciono a opção "<peso>" como "peso"
        When eu preencho "altura" com "<altura>"
        When eu preencho "largura" com "<largura>"
        When eu preencho "comprimento" com "<comprimento>"
        When eu preencho "cep destino" com "<cep_destino>"
        When eu clico no botão calcular

        Examples:
            | cep_origem | formato        | peso     | altura | largura | comprimento | cep_destino |
            | 08090284   | Caixa / Pacote | Até 300g | 2      | 11      | 16          | 05407002    |
