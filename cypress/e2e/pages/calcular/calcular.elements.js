module.exports = {
      CEP_ORIGEM: () => {
        return cy.get("#originPostcode");
      },
      FORMATO: () => {
        return cy.get('#object_format')
      },
      PESO: () => {
        return cy.get('#weight')
      },
      ALTURA: () => {
        return cy.get('#packageHeight');
      },
      LARGURA_ENVELOPE: () => {
        return cy.get('[name="envelope_width"]');
      },
      COMPRIMENTO_ENVELOPE: () => {
        return cy.get('[name="envelope_depth"]');
      },
      COMPRIMENTO_CILINDRO: () => {
        return cy.get('[name="cilinder_depth"]');
      },
      DIAMETRO_CILINDRO: () => {
        return cy.get('[name="cilinder_diameter"]');
      },
      LARGURA: () => {
        return cy.get('#packageWidth');
      },
      COMPRIMENTO: () => {
        return cy.get('#packageDepth');
      },
      CEP_DESTINO: () => {
        return cy.get('#destinationPostcode');
      },
      BTN_CALCULAR: () => {
        return cy.get(`[data-cy="calculator-submit"]`);
      },
      OPCAO_FRETE: (frete) => {
        return cy.get('.MuiAccordionSummary-root')
                .should('contain', frete.tipo)
                .should('contain', frete.prazo)
                .should('contain', frete.balcao)
                .should('contain', frete.app)
      },
      MENSAGEM_ALERTA: (texto) => {
        return cy.get('p').contains(texto);
      }
}