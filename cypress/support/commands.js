Cypress.on('uncaught:exception', (err, runnable) => {
    // Retornar false para impedir que o Cypress
    return false
});