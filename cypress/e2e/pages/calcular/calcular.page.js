import calcularElements from "./calcular.elements"

class CalcularPage {

    abrir() {
        cy.clearAllCookies();
        cy.clearLocalStorage();
        cy.clearCookies();
        cy.clearAllSessionStorage();
        cy.visit('/');

    }
    paginaCarregada() {
       calcularElements.ALTURA();
       calcularElements.CEP_DESTINO();
       calcularElements.FORMATO();
       calcularElements.CEP_ORIGEM();
       calcularElements.LARGURA();
       calcularElements.PESO();
    }

    preencheCampo(nomeCampo, conteudo) {
        nomeCampo = formataNomeCampo(nomeCampo);
        calcularElements[nomeCampo]().type(conteudo);
    }

    selecionaOpcao(nomeCampo, opcao) {
        nomeCampo = formataNomeCampo(nomeCampo);
        calcularElements[nomeCampo]().click({force: true});
        cy.contains(opcao).click({force: true});
    }

    calcularFrete() {
        calcularElements.BTN_CALCULAR().click();
    }

    
}

function formataNomeCampo(nome) {
    return nome.toUpperCase().split(" ").join("_");
}

export default CalcularPage