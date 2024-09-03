import calcularElements from "./calcular.elements"

class CalcularPage {

    abrir() {
        cy.visit('/');
    }

    paginaCarregada() {
        cy.wait(10000);
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
        calcularElements[nomeCampo]().click({ force: true });
        cy.contains(opcao).click({ force: true });
    }

    calcularFrete() {
        calcularElements.BTN_CALCULAR().click();
    }

    confereOpcaoFrete(frete) {
        calcularElements.OPCAO_FRETE(frete);
    }

    confereMensagem(texto) {
        calcularElements.MENSAGEM_ALERTA(texto);
    }
}

function formataNomeCampo(nome) {
    return nome.toUpperCase().split(" ").join("_");
}

export default CalcularPage