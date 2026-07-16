describe('Example Test Suite', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it('should visit the home page', () => {
    cy.url().should('include', '/')
  })

  it('should have a page title', () => {
    cy.get('title').should('exist')
  })

  it('example - verify page loads', () => {
    cy.get('body').should('be.visible')
  })
})
