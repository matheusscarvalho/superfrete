import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor'
import CalcularPage from '../../e2e/pages/calcular/calcular.page';

const calcularPage = new CalcularPage();

Given('eu acesso a página {string}', (pagina) => {
    switch (pagina) {
        case "Calcular Frete":
            calcularPage.abrir();
            calcularPage.paginaCarregada();
            break;
    
        default:
            break;
    }
})

When('eu preencho {string} com {string}', (nomeCampo, conteudo) => {
    calcularPage.preencheCampo(nomeCampo, conteudo);
})

When('eu seleciono a opção {string} como {string}', (opcao, nomeCampo) => {
   calcularPage.selecionaOpcao(nomeCampo, opcao);
});

When('eu clico no botão calcular', ()=> {
    calcularPage.calcularFrete();
})
