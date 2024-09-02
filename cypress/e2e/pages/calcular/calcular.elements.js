module.exports = {
      CEP_ORIGEM: () => {
        return cy.get("#originPostcode");
      },
      FORMATO: () => {
        return cy.get('[data-cy="calculator-format"]');
      },
      PESO: () => {
        return cy.get(`[data-cy="calculator-weight"]`);
      },
      ALTURA: () => {
        return cy.get('#packageHeight');
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
      }
}