// Custom commands
// Example:
// cy.login('email@example.com', 'password')

Cypress.Commands.add('login', (email, password) => {
  cy.visit('/login');
  cy.get('input[type="email"]').type(email);
  cy.get('input[type="password"]').type(password);
  cy.get('button[type="submit"]').click();
});

Cypress.Commands.add('logout', () => {
  cy.get('[data-cy="logout-btn"]').click();
});
