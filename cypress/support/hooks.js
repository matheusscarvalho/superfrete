
beforeEach(() => {
    cy.wait(10000);
    cy.clearAllSessionStorage();
    cy.clearAllCookies();
    cy.getCookies().should('be.empty')
});

afterEach(() => {
    cy.clearAllSessionStorage()
    cy.clearAllSessionStorage();
    cy.clearAllCookies();
    cy.getCookies().should('be.empty')
});