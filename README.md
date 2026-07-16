# Testiny Cypress E2E Tests

Comprehensive E2E testing suite using Cypress for the Testiny application.

## Installation

```bash
npm install
```

## Running Tests

### Open Cypress Test Runner (Interactive Mode)
```bash
npm run cy:open
```

### Run All Tests (Headless)
```bash
npm run cy:run
```

### Run Tests in Headed Mode
```bash
npm run cy:run:headed
```

### Run Tests in Chrome
```bash
npm run cy:run:chrome
```

### Run Tests in Firefox
```bash
npm run cy:run:firefox
```

## Project Structure

```
cypress/
├── e2e/                 # End-to-end test files
│   └── example.cy.js   # Example test suite
├── support/
│   ├── commands.js     # Custom Cypress commands
│   └── e2e.js          # E2E support file
cypress.config.js        # Cypress configuration
package.json            # Project dependencies
```

## Configuration

### Base URL
Update `baseUrl` in `cypress.config.js` to match your application's URL.

### Viewport
Default viewport is set to 1280x720. Modify in `cypress.config.js` if needed.

### Timeouts
- Command timeout: 10000ms
- Request timeout: 10000ms
- Response timeout: 10000ms

## Writing Tests

1. Create test files in `cypress/e2e/` with `.cy.js` extension
2. Use custom commands from `cypress/support/commands.js`
3. Follow the example in `cypress/e2e/example.cy.js`

### Example Test
```javascript
describe('Feature Name', () => {
  beforeEach(() => {
    cy.visit('/page-url')
  })

  it('should do something', () => {
    cy.get('selector').click()
    cy.get('result').should('be.visible')
  })
})
```

## Custom Commands

### Login Command
```javascript
cy.login('email@example.com', 'password')
```

### Logout Command
```javascript
cy.logout()
```

## Best Practices

- Use `data-cy` attributes for test selectors
- Keep tests focused and independent
- Use descriptive test names
- Avoid hard-coded waits; use proper assertions
- Organize tests by feature

## CI/CD Integration

Tests can be integrated into GitHub Actions or other CI/CD pipelines using:
```bash
npm test
```

## Resources

- [Cypress Documentation](https://docs.cypress.io)
- [Best Practices](https://docs.cypress.io/guides/references/best-practices)
- [API Reference](https://docs.cypress.io/api/table-of-contents)
